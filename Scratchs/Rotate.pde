class Rotate extends Node {
  String Direction;
  float amount = 0;
  
  void action(Cat cat) {  
    cat.turn(Direction,amount);
    if(this.child != null) {
      this.child.action(cat);
    }

  }
  
  void setTurn(String Direction,float amount) {
    this.Direction = Direction;
    this.amount = amount;
  }

}
