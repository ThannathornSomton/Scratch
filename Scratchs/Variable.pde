class Variable extends Node {
  int value;
  
  Variable(boolean locked) {
    posx = 15;
    posy = 50;
    xOffset = 0;
    yOffset = 0;
    this.locked = locked;
    overBox = locked;
  }  
  


  
}
