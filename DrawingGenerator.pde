 //<>// //<>//
class CentralLine
{
  CentralLine(PVector center,  float angle, float endRadius)
  {
    this.start = center;
    this.angle = angle;
    this.end = new PVector(center.x+endRadius*cos(radians(angle)), center.y+endRadius*sin(radians(angle)));
  }
  
  void draw()
  {
      line(start.x, start.y, end.x, end.y);
  }
  
  PVector start;
  PVector end;
  
  float angle;
}



class DrawingGenerator
{
     DrawingData data;
      
     PVector center = new PVector(400,400);
     
     ArrayList<CentralLine> central_Lines = new ArrayList<CentralLine>();
      
      
      void drawPolarLine(float radius1, float angle1, float radius2, float angle2)
      {
        line(center.x+radius1*cos(radians(angle1)), center.y+radius1*sin(radians(angle1)), center.x+radius2*cos(radians(angle2)), center.y+radius2*sin(radians(angle2)));   
      }
      
      
  
   /*   void drawOneLine(int steps, float angle, float deltaRot)
      {
          float weight = data.LineWeight;
          float radius = data.Radius;
          for (int i = 0 ; i < steps; i++)
            {
                strokeWeight(weight);
                  
                float angle2 = angle + deltaRot;
                float radius2 = radius * data.RatioRadius;
      
                drawPolarLine(radius, angle, radius2, angle2);
                
                angle = angle2;
                radius = radius2;
                weight = weight * data.RatioWeight;
            }
      }*/
      
      
    void build_central_lines()
    {
        int NbLines = data.NbLines;
        if (NbLines < 3)
          NbLines = 3;
          
        float angle = data.StartAngle;
        central_Lines = new ArrayList<CentralLine>();
        float deltaAngle = 360 / data.NbLines;
          
        randomSeed(data.RandomSeed);
      
        for (int i = 0 ; i < data.NbLines; i++)
        {
            float random_angle = random(-deltaAngle * data.RandomAngle / 2, deltaAngle * data.RandomAngle / 2);
            CentralLine line = new CentralLine(this.center, angle+random_angle, data.EndRadius);
            angle = angle + deltaAngle; 
            //print(angle);
            central_Lines.add(line);
            line.draw();
        }
      }

    void draw()
    {
        build_central_lines();
        
        int fullSteps = data.NbStepsMultiplier * data.NbSteps;
        
        int indexLine = 0;
        float prevRadius = data.StartRadius;
        
        for (int i = 0 ; i < fullSteps; i++)
        {
            float nextRadius = prevRadius + data.StepRadius  + data.StepRadius* random(-data.RandomStep, data.RandomStep);
            int indexNextLine = (indexLine +1 )% data.NbLines;
            
            
            drawPolarLine(prevRadius,central_Lines.get(indexLine).angle, nextRadius, central_Lines.get(indexNextLine).angle);
          
          
            prevRadius = nextRadius;
            indexLine = indexNextLine;
        }
    }
}
