class forloop extends Node {
  Boolean Truth;
  comparator compare;
  Node loop;
  int VarA,VarB; 

  forloop(boolean locked) {
    posx = 150;
    posy = 150;
    xOffset = 0;
    yOffset = 0;
    this.locked = locked;
    overBox = locked;
  }
  
  
  forloop() {
    VarA = 0;
  }
  
  void addLoop(Node args) {
    this.loop = args;
    args.parent = this;
  }
  
  void action(Cat cat) {
    this.doLoop(cat);
    if(this.child != null) {
      this.child.action(cat);
    }
  }
  
  void doLoop(Cat cat) {
    //Truth = compare.compare();
    Truth = true;
    while(Truth) {
      this.loop.action(cat);
      changeTruth();
      VarA--;
    }
    VarA = VarB;
  }
  
  void changeTruth(){
    if(VarA == 1){
      Truth = false;
    }
  }
  
  void setVal(int amount) {
    this.VarA = amount;
    this.VarB = amount;
  }
  
  void draw() {
    noStroke();
    textSize(14);
    this.checkMouse();
    rect(posx, posy, 120, 20);
    rect(posx, posy+20, 20, 20);
    rect(posx, posy+40, 120, 20);
    fill(240);
    text("repeat until", posx+5, posy+15);

  }
   
  void checkMouse() {
    if(mouseX >= posx && mouseX <= posx + 120 && mouseY >= posy && mouseY <= posy + 20) {
      overBox = true;
      fill(255,190,80);      
    }else {
      overBox = false;
      fill(255,171,25);
    }
  }
  
  void mP() {
    if(overBox) { 
      locked = true; 
    } else {
      locked = false;
    }
    xOffset = mouseX-posx; 
    yOffset = mouseY-posy; 
  }
  
  void mD() {
    if(locked) {
      posx = mouseX-xOffset; 
      posy = mouseY-yOffset; 
    }    
  }
  void mR() {
    locked = false;
  }  

}
