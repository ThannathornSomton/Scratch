class Flag extends Node {
  
  Flag(boolean locked) {
    posx = 15;
    posy = 10;
    xOffset = 0;
    yOffset = 0;
    this.locked = locked;
    overBox = locked;
  }
  
  
  void draw() {
    noStroke();
    textSize(14);
    this.checkMouse();
    rect(posx, posy, 120, 20);
    fill(240);
    text("when click", posx+22, posy+15);

  }
  
  void checkMouse() {
    if(mouseX >= posx && mouseX <= posx + 120 && mouseY >= posy && mouseY <= posy + 20) {
      overBox = true;
      fill(255,206,40);    
    }else {
      overBox = false;
      fill(255,191,0); 
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
