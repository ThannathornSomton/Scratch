class ifThen extends Node {
  Node True;
  comparator compare;
  boolean Truth;


  ifThen(boolean locked) {
    posx = 15;
    posy = 50;
    xOffset = 0;
    yOffset = 0;
    this.locked = locked;
    overBox = locked;
  }
  
  void addChildTrue(Node args) {
    this.True = args;
    args.parent = this;
  
  }
  
  void addComparator(comparator args) {
    this.compare = args;
    args.parent = this;
  }
  
  void action(Cat cat) {
    //Truth = compare.compare();
    Truth = false;
    this.ifaction(cat);
    if(this.child != null) {
      this.child.action(cat);
    }
    
  
  }
  
  void ifaction(Cat cat) {
    if(Truth) {
      this.True.action(cat);
    }
  }
  
  void draw() {
    noStroke();
    textSize(14);
    this.checkMouse();
    rect(posx, posy, 120, 20);
    rect(posx, posy+20, 20, 20);
    rect(posx, posy+40, 120, 20);
    fill(240);
    text("if", posx+10, posy+15);

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
  
  
