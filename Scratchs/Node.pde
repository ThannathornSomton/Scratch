class Node {
  Node child,parent;
  Boolean overBox,locked;
  int posx,posy,xOffset,yOffset,block;
  
  void addChild(Node args) {
    this.child = args;
    args.parent = this;
  
  }
  
  void action(Cat cat) {
    if(this.child != null) {
      this.child.action(cat);
    }
  }
  
}
