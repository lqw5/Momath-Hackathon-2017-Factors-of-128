public static class Animation extends WallAnimation {

  
  // First, we add metadata to be used in the MoMath system. Change these
  // strings for your behavior.
  String behaviorName = "Factors of 128";
  String author = "Lauren Wong";
  String description = "Shows the factors of 128 by pushing the slats forward to fill the whole sculpture in groups of 1, 2, 4, 8, 16, 32, 64, then 128.";


  // Now we initialize a few helpful global variables.
  boolean forward = true;
  float step = 0.0003;
  float loc = 0;
  int i = 0;     //frame counter
  // Number of wall slats
  int wallLength = 128;
  
  // The setup block runs at the beginning of the animation. You could
  // also use this function to initialize variables, load data, etc.
  void setup() {
 		 
  for (DWSlat slat : wall.slats) {
    slat.setBottom(0);
    slat.setTop(0);
  }
  
  }
  // The update block will be repeated for each frame. This is where the
  // action should be programmed.
  void update() {

    if (i < 512  && i%4 == 0){    //go by 1s
     DWSlat slat1 = wall.slats[i/4];
        slat1.setBottom(1);
        slat1.setTop(1);
        i++;
    }     
    else if (i == 516){    //refresh
     pApplet.delay(500);
     for (DWSlat one : wall.slats) {
       one.setBottom(0);
       one.setTop(0);
     }
     i++;
   }
   
    else if (i> 516 && i < 776 && i%4 ==0){    //go by 2s
     for (int index = wall.slats.length*(i-520)/256; index < wall.slats.length*(i-516)/256; index++){
        DWSlat slat = wall.slats[index];
        slat.setBottom(1);
        slat.setTop(1);
     }
     i++;
    }
    
    else if (i == 780){    //refresh
     pApplet.delay(500);
     for (DWSlat one : wall.slats) {
       one.setBottom(0);
       one.setTop(0);
     }
     i++;
   }
   
    else if (i> 780 && i < 912 && i%4 ==0){  //go by 4s
     for (int index = wall.slats.length*(i-784)/128; index < wall.slats.length*(i-780)/128; index++){
        DWSlat slat = wall.slats[index];
        slat.setBottom(1);
        slat.setTop(1);
     }
     i++;
    }
    
    else if (i == 916){    //refresh
     pApplet.delay(500);
     for (DWSlat one : wall.slats) {
       one.setBottom(0);
       one.setTop(0);
     }
     i++;
   }
   
    else if ( i> 916 && i < 984 && i%4 ==0){    //go by 8
     for (int index = wall.slats.length*(i-920)/64; index < wall.slats.length*(i-916)/64; index++){
        DWSlat slat = wall.slats[index];
        slat.setBottom(1);
        slat.setTop(1);
     }
     i++;
    }
   else if (i == 988){    //refresh
     pApplet.delay(500);
     for (DWSlat one : wall.slats) {
        one.setBottom(0);
        one.setTop(0);
      }
      i++;
   }
   
   else if ( i> 988 && i < 1024 && i%4 ==0){    //go by 16
     for (int index = wall.slats.length*(i-992)/32; index < wall.slats.length*(i-988)/32; index++){
        DWSlat slat = wall.slats[index];
        slat.setBottom(1);
        slat.setTop(1);
     }
     i++;
    }
    
   else if (i == 1028){    //refresh
     pApplet.delay(500);
     for (DWSlat one : wall.slats) {
        one.setBottom(0);
        one.setTop(0);
     }
      i++;
   }
    else if (i== 1032){  //go by 32s
     for (int index = 0; index < wall.slats.length/4; index++) {
        DWSlat slat = wall.slats[index];
        slat.setBottom(1);
        slat.setTop(1);
     }
     i++;
    }
    
    else if (i== 1036){    
     for (int index = wall.slats.length/4; index < wall.slats.length/2; index++) {
        DWSlat slat = wall.slats[index];
        slat.setBottom(1);
        slat.setTop(1);
     }
     i++;
    }
    
    else if (i== 1040){
     for (int index = wall.slats.length/2; index < wall.slats.length*3/4; index++) {
        DWSlat slat = wall.slats[index];
        slat.setBottom(1);
        slat.setTop(1);
     }
     i++;
    }
    
    else if (i== 1044){
     for (int index = wall.slats.length*3/4; index < wall.slats.length; index++) {
        DWSlat slat = wall.slats[index];
        slat.setBottom(1);
        slat.setTop(1);
     }
     i++;
    }
    
    else if (i == 1052){    //refresh
      pApplet.delay(500);
      for (DWSlat one : wall.slats) {
        one.setBottom(0);
        one.setTop(0);
      }
      i++;
   }
   
    else if (i == 1056){    //go by 64s
     for (int index = 0; index < wall.slats.length/2; index++) {
        DWSlat slat = wall.slats[index];
        slat.setBottom(1);
        slat.setTop(1);
     }
     i++;
    }
    
    else if (i == 1060){    
     for (int index = wall.slats.length/2; index < wall.slats.length; index++) {
        DWSlat slat = wall.slats[index];
        slat.setBottom(1);
        slat.setTop(1);
     }
    i++;
    }
    
    else if (i == 1068){    //refresh
      pApplet.delay(500);
      for (DWSlat one : wall.slats) {
        one.setBottom(0);
        one.setTop(0);
      }
      i++;
    }
    else if (i == 1072){    //go by 128
     for (DWSlat slat : wall.slats) {
      slat.setBottom(1);
      slat.setTop(1);
    }
    i++;
   }
    else if (i >= 1080){    //refresh
      pApplet.delay(500);
      for (DWSlat slat : wall.slats) {
        slat.setBottom(0);
        slat.setTop(0);
      }
      i = 0;
      pApplet.delay(500);
    }
    
    else 
      i++;   
 }

  // Leave this function blank
  void exit() {
  }
  
  // You can ignore everything from here.
  String getBehaviorName() {
    return behaviorName;
  }
  
  String getAuthorName() {
    return author;
  }
  
  String getDescription() {
    return description;
  }
  
}