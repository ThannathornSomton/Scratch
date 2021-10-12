class forloop extends Node {
  Boolean Truth;
  comparator compare;
  Node loop;
  int VarA,VarB; 
  
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

}
