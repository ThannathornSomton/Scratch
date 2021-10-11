class Walk extends Node {
  String Direction;
  float amount = 0;
  
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

}
