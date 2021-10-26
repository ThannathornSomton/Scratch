Scratch myScratch;
void setup(){
  myScratch = new Scratch();
  size(1280,720);
  frameRate(120);
}

void draw() {
  myScratch.draw();
}

void keyPressed() {
  myScratch.kP();
}

void mousePressed() {
  myScratch.mP();
}

void mouseDragged() {
  myScratch.mD();
}

void mouseReleased() {
  myScratch.mR();
}



class Scratch {
  Cat myCat;
  GUI myGUI;
  Flag [] F,FD;
  ifThen [] IFT,IFTD;
  ifElse [] IF,IFD;
  forloop [] FLOOP,FLOOPD;  
  Walk [] WALK,WALKD;
  Rotate [] ROT,ROTD;
  Calculate [] CAL,CALD;
  comparator [] COM,COMD;

  
  Scratch() {
    myGUI = new GUI();
    myCat = new Cat(myGUI.rightH/6,myGUI.rightV+(width-myGUI.rightV)/2,myGUI.rightH/2);
    F = new Flag[10];
    IFT = new ifThen[10];
    IF = new ifElse[10];
    FLOOP = new forloop[10];   
    WALK = new Walk[10];   
    ROT = new Rotate[10];
    CAL = new Calculate[20];
    COM = new comparator[20];
    
    
   


  }
  
  void draw() {
    background(200);
    myGUI.catFrame();
    myGUI.itemXY(myCat);
    myCat.draw();
    myGUI.boardFrame();
    myGUI.itemFrame();
    myGUI.itemShowCase();
    for(int i = 0; i < F.length; i++) {if(F[i] != null){F[i].draw();} } 
    for(int i = 0; i < IFT.length; i++) {if(IFT[i] != null){IFT[i].draw();} }    
    for(int i = 0; i < IF.length; i++) {if(IF[i] != null){IF[i].draw();} }
    for(int i = 0; i < FLOOP.length; i++) {if(FLOOP[i] != null){FLOOP[i].draw();} }    
    for(int i = 0; i < WALK.length; i++) {if(WALK[i] != null){WALK[i].draw();} }
    for(int i = 0; i < ROT.length; i++) {if(ROT[i] != null){ROT[i].draw();} }    
    for(int i = 0; i < CAL.length; i++) {if(CAL[i] != null){CAL[i].draw();} } 
    for(int i = 0; i < COM.length; i++) {if(COM[i] != null){COM[i].draw();} }     
  
  }

  
  void newArr() {
    if(mouseX >= 15 && mouseX <= 135 && mouseY >= 10 && mouseY <= 30) {
      int i = 0; boolean created = false; while(!created) {
      if(F[i] == null){F[i] = new Flag(true); created = true;}i++;}
    }    
    else if(mouseX >= 15 && mouseX <= 135 && mouseY >= 50 && mouseY <= 110) {
      int i = 0; boolean created = false; while(!created) {
      if(IFT[i] == null){IFT[i] = new ifThen(true); created = true;}i++;}
    }
    else if(mouseX >= 150 && mouseX <= 270 && mouseY >= 30 && mouseY <= 130) {
      int i = 0; boolean created = false; while(!created) {
      if(IF[i] == null){IF[i] = new ifElse(true); created = true;}i++;}
    }
    else if(mouseX >= 150 && mouseX <= 270 && mouseY >= 150 && mouseY <= 210) { 
      int i = 0; boolean created = false; while(!created) {
      if(FLOOP[i] == null){FLOOP[i] = new forloop(true); created = true;}i++;}
    }       
    else if(mouseX >= 15 && mouseX <= 135 && mouseY >= 130 && mouseY <= 150) { 
      int i = 0; boolean created = false; while(!created) {
      if(WALK[i] == null){WALK[i] = new Walk(true); created = true;}i++;}
    }
    else if(mouseX >= 15 && mouseX <= 135 && mouseY >= 170 && mouseY <= 190) { 
      int i = 0; boolean created = false; while(!created) {
      if(ROT[i] == null){ROT[i] = new Rotate(true); created = true;}i++;}
    } 
    else if(mouseX >= 45 && mouseX <= 135 && mouseY >= 210 && mouseY <= 230) { 
      int i = 0; boolean created = false; while(!created) {
      if(CAL[i] == null){CAL[i] = new Calculate(true,"+"); created = true;}i++;}
    }  
    else if(mouseX >= 45 && mouseX <= 135 && mouseY >= 250 && mouseY <= 270) { 
      int i = 0; boolean created = false; while(!created) {
      if(CAL[i] == null){CAL[i] = new Calculate(true,"-"); created = true;}i++;}
    } 
    else if(mouseX >= 45 && mouseX <= 135 && mouseY >= 290 && mouseY <= 310) { 
      int i = 0; boolean created = false; while(!created) {
      if(CAL[i] == null){CAL[i] = new Calculate(true,"*"); created = true;}i++;}
    } 
    else if(mouseX >= 45 && mouseX <= 135 && mouseY >= 330 && mouseY <= 350) { 
      int i = 0; boolean created = false; while(!created) {
      if(CAL[i] == null){CAL[i] = new Calculate(true,"/"); created = true;}i++;}
    }  
    else if(mouseX >= 180 && mouseX <= 240 && mouseY >= 230 && mouseY <= 250) { 
      int i = 0; boolean created = false; while(!created) {
      if(COM[i] == null){COM[i] = new comparator(true,">"); created = true;}i++;}
    } 
    else if(mouseX >= 180 && mouseX <= 240 && mouseY >= 270 && mouseY <= 290) { 
      int i = 0; boolean created = false; while(!created) {
      if(COM[i] == null){COM[i] = new comparator(true,"<"); created = true;}i++;}
    }
    else if(mouseX >= 180 && mouseX <= 240 && mouseY >= 310 && mouseY <= 330) { 
      int i = 0; boolean created = false; while(!created) {
      if(COM[i] == null){COM[i] = new comparator(true,"="); created = true;}i++;}
    }      
  }
  
  
  void mP() {
    this.newArr();
    for(int i = 0; i < F.length; i++) {if(F[i] != null){F[i].mP();} }     
    for(int i = 0; i < IFT.length; i++) {if(IFT[i] != null){IFT[i].mP();} }    
    for(int i = 0; i < IF.length; i++) {if(IF[i] != null){IF[i].mP();} }
    for(int i = 0; i < FLOOP.length; i++) {if(FLOOP[i] != null){FLOOP[i].mP();} }    
    for(int i = 0; i < WALK.length; i++) {if(WALK[i] != null){WALK[i].mP();} }
    for(int i = 0; i < ROT.length; i++) {if(ROT[i] != null){ROT[i].mP();} }
    for(int i = 0; i < CAL.length; i++) {if(CAL[i] != null){CAL[i].mP();} }
    for(int i = 0; i < COM.length; i++) {if(COM[i] != null){COM[i].mP();} }    
  }
  
  void mD() {
    for(int i = 0; i < F.length; i++) {if(F[i] != null){F[i].mD();} }     
    for(int i = 0; i < IFT.length; i++) {if(IFT[i] != null){IFT[i].mD();} }    
    for(int i = 0; i < IF.length; i++) {if(IF[i] != null){IF[i].mD();} }
    for(int i = 0; i < FLOOP.length; i++) {if(FLOOP[i] != null){FLOOP[i].mD();} }     
    for(int i = 0; i < WALK.length; i++) {if(WALK[i] != null){WALK[i].mD();} } 
    for(int i = 0; i < ROT.length; i++) {if(ROT[i] != null){ROT[i].mD();} } 
    for(int i = 0; i < CAL.length; i++) {if(CAL[i] != null){CAL[i].mD();} } 
    for(int i = 0; i < COM.length; i++) {if(COM[i] != null){COM[i].mD();} }      
  }
  
  void mR() {

    this.delFlag();
    this.delIfThen();
    this.delIfElse();
    this.delForLoop();
    this.delWalk();
    this.delRotate();
    this.delCalculate();
    this.delComparator();
    for(int i = 0; i < F.length; i++) {if(F[i] != null){F[i].mR();} }     
    for(int i = 0; i < IFT.length; i++) {if(IFT[i] != null){IFT[i].mR();} }    
    for(int i = 0; i < IF.length; i++) {if(IF[i] != null){IF[i].mR();} }
    for(int i = 0; i < FLOOP.length; i++) {if(FLOOP[i] != null){FLOOP[i].mR();} }     
    for(int i = 0; i < WALK.length; i++) {if(WALK[i] != null){WALK[i].mR();} } 
    for(int i = 0; i < ROT.length; i++) {if(ROT[i] != null){ROT[i].mR();} } 
    for(int i = 0; i < ROT.length; i++) {if(CAL[i] != null){CAL[i].mR();} } 
    for(int i = 0; i < COM.length; i++) {if(COM[i] != null){COM[i].mR();} }      
  }
  
  void kP() {

  }
  
  
  
  void delFlag() {
    if(mouseX <= myGUI.leftV) {int del = 20;for(int i = 0; i < F.length; i++) {if(F[i] != null ) {if(F[i].overBox == true) {del = i;}}}
    if(del != 20) {FD = new Flag[F.length]; for(int i = 0; i< F.length; i++) {if(i > del) {FD[i-1] = F[i];}else {FD[i] = F[i];}}F = FD;}
    }  
  }  
    
  void delIfThen() {
    if(mouseX <= myGUI.leftV) {int del = 20;for(int i = 0; i < IFT.length; i++) {if(IFT[i] != null ) {if(IFT[i].overBox == true) {del = i;}}}
    if(del != 20) {IFTD = new ifThen[IFT.length]; for(int i = 0; i< IFT.length; i++) {if(i > del) {IFTD[i-1] = IFT[i];}else {IFTD[i] = IFT[i];}}IFT = IFTD;}
    }  
  }
  
  void delIfElse() {
    if(mouseX <= myGUI.leftV) {int del = 20;for(int i = 0; i < IF.length; i++) {if(IF[i] != null ) {if(IF[i].overBox == true) {del = i;}}}
    if(del != 20) {IFD = new ifElse[IF.length]; for(int i = 0; i< IF.length; i++) {if(i > del) {IFD[i-1] = IF[i];}else {IFD[i] = IF[i];}}IF = IFD;}
    }
  }

  void delForLoop() {
    if(mouseX <= myGUI.leftV) {int del = 20;for(int i = 0; i < FLOOP.length; i++) {if(FLOOP[i] != null ) {if(FLOOP[i].overBox == true) {del = i;}}}
    if(del != 20) {FLOOPD = new forloop[FLOOP.length]; for(int i = 0; i< FLOOP.length; i++) {if(i > del) {FLOOPD[i-1] = FLOOP[i];}else {FLOOPD[i] = FLOOP[i];}}FLOOP = FLOOPD;}
    }
  }
  
  void delWalk() {
    if(mouseX <= myGUI.leftV) {int del = 20;for(int i = 0; i < WALK.length; i++) {if(WALK[i] != null ) {if(WALK[i].overBox == true) {del = i;}}}
    if(del != 20) {WALKD = new Walk[WALK.length]; for(int i = 0; i< WALK.length; i++) {if(i > del) {WALKD[i-1] = WALK[i];}else {WALKD[i] = WALK[i];}}WALK = WALKD;}
    }  
  }
  
  void delRotate() {
    if(mouseX <= myGUI.leftV) {int del = 20;for(int i = 0; i < ROT.length; i++) {if(ROT[i] != null ) {if(ROT[i].overBox == true) {del = i;}}}
    if(del != 20) {ROTD = new Rotate[ROT.length]; for(int i = 0; i< ROT.length; i++) {if(i > del) {ROTD[i-1] = ROT[i];}else {ROTD[i] = ROT[i];}}ROT = ROTD;}
    }  
  }  
  
  void delCalculate() {
    if(mouseX <= myGUI.leftV) {int del = 20;for(int i = 0; i < CAL.length; i++) {if(CAL[i] != null ) {if(CAL[i].overBox == true) {del = i;}}}
    if(del != 20) {CALD = new Calculate[CAL.length]; for(int i = 0; i< CAL.length; i++) {if(i > del) {CALD[i-1] = CAL[i];}else {CALD[i] = CAL[i];}}CAL = CALD;}
    }  
  }
  
  void delComparator() {
    if(mouseX <= myGUI.leftV) {int del = 20;for(int i = 0; i < COM.length; i++) {if(COM[i] != null ) {if(COM[i].overBox == true) {del = i;}}}
    if(del != 20) {COMD = new comparator[COM.length]; for(int i = 0; i< COM.length; i++) {if(i > del) {COMD[i-1] = COM[i];}else {COMD[i] = COM[i];}}COM = COMD;}
    }  
  }  

}
