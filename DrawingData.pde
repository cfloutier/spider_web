import controlP5.*; //<>// //<>// //<>//


class DrawingData
{
    int RandomSeed = 0;
  
  
    int NbLines = 6;
    
    int NbSteps = 100;
    int NbStepsMultiplier = 1;
    
    float StartAngle = 0;
    float RandomAngle = 0;
    
    float StartRadius = 10; // first setp radius
    float EndRadius = 300; // last step radius
    
    float StepRadius = 1; // first setp radius
    float RandomStep = 0.5; // last step radius
    
       
    void LoadJson(String path)
    {
      JSONObject json = loadJSONObject(path);
      RandomSeed = json.getInt("RandomSeed", RandomSeed);
      NbLines = json.getInt("NbLines", NbLines);
      
      NbSteps = json.getInt("NbSteps", NbSteps);
      NbStepsMultiplier = json.getInt("NbStepsMultiplier", NbStepsMultiplier);
      
      StartAngle = json.getFloat("StartAngle", StartAngle);
      RandomAngle = json.getFloat("RandomAngle", StartAngle);
     
      StartRadius = json.getFloat("StartRadius", StartRadius);
      EndRadius = json.getFloat("EndRadius", EndRadius);
      
      StepRadius = json.getFloat("StepRadius", StepRadius);
      RandomStep = json.getFloat("RandomStep", RandomStep);
    }
    
    void SaveJson(String path)
    {
      JSONObject json = new JSONObject();
      
      json.setInt("RandomSeed", RandomSeed);
      
      json.setInt("NbLines", NbLines);
      
      json.setInt("NbSteps", NbSteps);
      json.setInt("NbStepsMultiplier", NbStepsMultiplier);
      
      json.setFloat("StartAngle", StartAngle);
      json.setFloat("RandomAngle", RandomAngle);
      
      json.setFloat("StartRadius", StartRadius);
      json.setFloat("EndRadius", EndRadius);
      
      json.setFloat("StepRadius", StepRadius);
      json.setFloat("RandomStep", RandomStep);
      
      saveJSONObject(json, path);
    }
    
}
