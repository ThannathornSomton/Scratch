class comparator extends Node {
  int VarA,VarB;
  String operator;
  
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
}
