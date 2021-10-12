class Delay extends Node {
  int delay;


  void action(Cat cat) {
    int time = frameCount ;
    while((frameCount - time)/120*1000 < delay  ) {
    } 
    if(this.child != null) {
      this.child.action(cat);
    }
  }

  void setDelay(int amount) {
    this.delay = amount;
  }
  
  
  
}
