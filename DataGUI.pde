import controlP5.*; //<>// //<>//


class DataGUI
{
    ControlP5 cp5;
    void setGUIValues(DrawingData data)
    {
      NbLines.setValue(data.NbLines);
      
      NbSteps.setValue(data.NbSteps);
      NbStepsMultiplier.setValue(data.NbStepsMultiplier);
     
      StartAngle.setValue(data.StartAngle);
      
      StartRadius.setValue(data.StartRadius);
      EndRadius.setValue(data.EndRadius);
    }
    
   Slider RandomSeed;
    
   Slider NbLines;
   Slider NbSteps;
   Slider NbStepsMultiplier;
   
   Slider StartAngle;
   Slider RandomAngle;
   
   Slider StartRadius;
   Slider EndRadius;
   
   Slider StepRadius;
   Slider RandomStep;
  
    
    void setupControls(DrawingData data, ControlP5 cp5)
  	{ 
    
      this.cp5 = cp5;
      
  	  float xPos = 0;
  	  float yPos = 20;
  	  int widthCtrl = 500; 
  	  int heightCtrl = 20;
  
     RandomSeed = cp5.addSlider(data, "RandomSeed")   
             .setPosition(xPos,yPos)
             .setSize(widthCtrl,heightCtrl)
             .setRange(1,10000)
             .moveTo("Controls");
       
      yPos+=heightCtrl;
  	  
  		NbLines = cp5.addSlider(data, "NbLines")   
        		 .setPosition(xPos,yPos)
        		 .setSize(widthCtrl,heightCtrl)
             .setRange(1,36)
             .moveTo("Controls");
       
  		yPos+=heightCtrl;
  	  
  	  NbSteps = cp5.addSlider(data, "NbSteps")
        		 .setPosition(xPos,yPos)
        		 .setSize(widthCtrl,heightCtrl)
        		 .setRange(2,100)
             .moveTo("Controls");
  
      yPos+=heightCtrl;
  		 
      NbStepsMultiplier = cp5.addSlider(data, "NbStepsMultiplier")
              .setPosition(xPos,yPos)
              .setSize(widthCtrl,heightCtrl)
              .setRange(1,10)
              .moveTo("Controls");

  	  yPos+=heightCtrl;
  
  		StartAngle = cp5.addSlider(data,"StartAngle")
             .setPosition(xPos,yPos)
             .setSize(widthCtrl,heightCtrl)
             .setRange(0,180)
             .moveTo("Controls");
       
      yPos+=heightCtrl;
      
      RandomAngle = cp5.addSlider(data,"RandomAngle")
             .setPosition(xPos,yPos)
             .setSize(widthCtrl,heightCtrl)
             .setRange(0,1)
             .moveTo("Controls");
       
      yPos+=heightCtrl;
      
  		StartRadius = cp5.addSlider(data,"StartRadius")
      		 .setPosition(xPos,yPos)
      		 .setSize(widthCtrl,heightCtrl)
      		 .setRange(0,100)
           .moveTo("Controls");
  		 
  	  yPos+=heightCtrl;
  	  
  		EndRadius = cp5.addSlider(data, "EndRadius")
    		  .setPosition(xPos,yPos)
    		  .setSize(widthCtrl,heightCtrl)
    		  .setRange(0,800)
          .moveTo("Controls");
  
  		yPos+=heightCtrl;
  
      StepRadius = cp5.addSlider(data, "StepRadius")
          .setPosition(xPos,yPos)
          .setSize(widthCtrl,heightCtrl)
          .setRange(0,5)
          .moveTo("Controls");
  
      yPos+=heightCtrl;
      
      RandomStep = cp5.addSlider(data, "RandomStep")
          .setPosition(xPos,yPos)
          .setSize(widthCtrl,heightCtrl)
          .setRange(0,5)
          .moveTo("Controls");
  
      yPos+=heightCtrl;
     

  	/*	 Mirror = cp5.addToggle(data, "Mirror")
      		  .setPosition(xPos,yPos)
      		  .setSize(100,heightCtrl)  
      		  .setMode(ControlP5.SWITCH)
            .moveTo("Controls");*/
  	}
}
