class Walk extends Node {

  String Direction;
  float amount = 0;

  Walk(boolean locked) {
    posx = 15;
    posy = 130;
    xOffset = 0;
    yOffset = 0;
    this.locked = locked;
    overBox = locked;
  }  
  
  void action(Cat cat) {
    cat.move(Direction,amount);
    if(this.child != null) {
      this.child.action(cat);
    }
  }
  
  void setWalk(String Direction,float amount) {
    this.Direction = Direction;
    this.amount = amount;
  }
  
  void draw() {
    noStroke();
    textSize(14);
    this.checkMouse();
    rect(posx, posy, 70, 20);
    rect(posx+70, posy, 50, 20);
    fill(240);
    text("move", posx+5, posy+15);
    text("steps", posx+75, posy+15);

  }
  

  
  void checkMouse() {
    if(mouseX >= posx && mouseX <= posx + 120 && mouseY >= posy && mouseY <= posy + 20) {
      overBox = true;
      fill(100,162,255);      
    }else {
      overBox = false;
      fill(76,151,255);
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
