class comparator extends Node {
  int VarA,VarB;
  String operator;
  
  comparator(boolean locked,String operator) {
    xOffset = 0;
    yOffset = 0;
    this.locked = locked;
    overBox = locked;
    if(operator.equals(">")) {
      posx = 180;
      posy = 230;
      this.operator = operator;
    }
    else if(operator.equals("<")) {
      posx = 180;
      posy = 270;
      this.operator = operator;
    }
    else if(operator.equals("=")) {
      posx = 180;
      posy = 310;
      this.operator = operator;
    }  
  
  }  
  boolean compare() {
    switch(operator){ 
      case ">" :
        if(VarA > VarB)return true;
        break;
      case "<" :
        if(VarA < VarB)return true;
        break;
      case "==" :
        if(VarA == VarB)return true;
        break;
      case ">=" :
        if(VarA >= VarB)return true;
        break;
      case "<=" :
        if(VarA <= VarB)return true;
        break;
     }
     return false;
  }
  
  void draw() {
    noStroke();
    textSize(14);
    this.checkMouse();
    rect(posx, posy, 60, 20);
    fill(240);
    text(operator, posx+25, posy+15);

  }
  
  void checkMouse() {
    if(mouseX >= posx && mouseX <= posx + 120 && mouseY >= posy && mouseY <= posy + 20) {
      overBox = true;
      fill(136,225,136);      
    }else {
      overBox = false;
      fill(89, 192, 89);
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
