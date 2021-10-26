class GUI {
  int leftV, rightV, rightH;

  GUI() {
    leftV = width/3-width/9;
    rightV = ((width-leftV)/2 + leftV) + ((width-leftV)/2 + leftV)/10;
    rightH = width-rightV;
  }

  void GUI() {
  }

  void itemShowCase() { 
    this.itemPlay();
    this.itemIfElse();
    this.itemIfThen();
    this.itemWalk();
    this.itemTurn();
    this.itemFor();
    this.itemPlus();
    this.itemMinus();
    this.itemMulti();
    this.itemDivine();
    this.itemMore();
    this.itemLess();
    this.itemEqual();
    this.itemVariable();
  }

  void itemPlay() {
    int posx = 15, posy = 10;
    noStroke();
    textSize(14);
    fill(255, 191, 0);
    rect(posx, posy, 120, 20);
    fill(240);
    text("when click", posx+22, posy+15);
  }

  void itemIfElse() {
    int posx = 150, posy = 30;
    noStroke();
    textSize(14);
    fill(255, 171, 25);
    rect(posx, posy, 120, 20);
    rect(posx, posy+20, 20, 20);
    rect(posx, posy+40, 120, 20);
    rect(posx, posy+60, 20, 20);
    rect(posx, posy+80, 120, 20);
    fill(240);
    text("if", posx+10, posy+15);
    text("else", posx+7, posy+55);
  }

  void itemIfThen() {
    int posx = 15, posy = 50;
    noStroke();
    textSize(14);
    fill(255, 171, 25);
    rect(posx, posy, 120, 20);
    rect(posx, posy+20, 20, 20);
    rect(posx, posy+40, 120, 20);
    fill(240);
    text("if", posx+10, posy+15);
  }

  void itemFor() {
    int posx = 150, posy = 150;
    noStroke();
    textSize(14);
    fill(255, 171, 25);
    rect(posx, posy, 120, 20);
    rect(posx, posy+20, 20, 20);
    rect(posx, posy+40, 120, 20);
    fill(240);
    text("repeat until", posx+5, posy+15);
  }

  void itemWalk() {
    int posx = 15, posy = 130;
    noStroke(); 
    textSize(14);
    fill(76, 151, 255);
    rect(posx, posy, 70, 20);
    rect(posx+70, posy, 50, 20);
    fill(240);
    text("move", posx+5, posy+15);
    text("steps", posx+75, posy+15);
  }

  void itemTurn() {
    int posx = 15, posy = 170;
    noStroke(); 
    textSize(14);
    fill(76, 151, 255);
    rect(posx, posy, 70, 20);
    rect(posx+70, posy, 50, 20);
    fill(240);
    text("turn", posx+5, posy+15);
    text("deg", posx+85, posy+15);
  }


  void itemPlus() {
    int posx = 45, posy = 210;
    noStroke();
    textSize(14);
    fill(89, 192, 89);
    rect(posx, posy, 60, 20);
    fill(240);
    text("+", posx+25, posy+15);
  }

  void itemMinus() {
    int posx = 45, posy = 250;
    noStroke();
    textSize(14);
    fill(89, 192, 89);
    rect(posx, posy, 60, 20);
    fill(240);
    text("-", posx+25, posy+15);
  }

  void itemMulti() {
    int posx = 45, posy = 290;
    noStroke();
    textSize(14);
    fill(89, 192, 89);
    rect(posx, posy, 60, 20);
    fill(240);
    text("*", posx+25, posy+15);
  }  

  void itemDivine() {
    int posx = 45, posy = 330;
    noStroke();
    textSize(14);
    fill(89, 192, 89);
    rect(posx, posy, 60, 20);
    fill(240);
    text("/", posx+25, posy+15);
  }

  void itemMore() {
    int posx = 180, posy = 230;
    noStroke();
    textSize(14);
    fill(89, 192, 89);
    rect(posx, posy, 60, 20);
    fill(240);
    text(">", posx+25, posy+15);
  }

  void itemLess() {
    int posx = 180, posy = 270;
    noStroke();
    textSize(14);
    fill(89, 192, 89);
    rect(posx, posy, 60, 20);
    fill(240);
    text("<", posx+25, posy+15);
  }

  void itemEqual() {
    int posx = 180, posy = 310;
    noStroke();
    textSize(14);
    fill(89, 192, 89);
    rect(posx, posy, 60, 20);
    fill(240);
    text("=", posx+25, posy+15);
  }

  void itemVariable() {
    int posx = 195, posy = 350;
    noStroke();
    textSize(14);
    fill(255, 140, 26);
    rect(posx, posy, 30, 20);
    fill(240);
    text("mV", posx+5, posy+15);
  }
  
  void itemXY(Cat cat) {
  fill(0);
  text(cat.posx,this.rightV+50,this.rightH-10);
  text(cat.posy,this.rightV+300,this.rightH-10);
}


  void itemGrid() {
    stroke(160);
    for (int i = 1; i < 13; i++) {
      line(0, i*60, leftV, i*60);
      line(leftV/2, i*60-60, leftV/2, i*60);
    }
    stroke(255);
  }  

  void catFrame() {
    noStroke();
    fill(250);
    rect(rightV, 0, width-rightV, rightH);
    fill(255);
    stroke(155);
    line(rightV, 0, width-1, 0);
    line(width-1, 0, width-1, rightH);
    line(rightV, 0, rightV, rightH-1);
    line(rightV, rightH-1, width-1, rightH-1);
    stroke(0);
  }

  void itemFrame() {
    noStroke();
    fill(240);
    rect(0, 0, leftV, height-1);
    fill(255);
    stroke(155);
    line(0, 0, 0, height-1);
    line(0, 0, leftV, 0);
    line(leftV, 0, leftV, height-1);
    line(0, height-1, leftV, height-1);
    stroke(0);
  }

  void boardFrame() {
    noStroke();
    fill(240);
    rect(leftV, 0, rightV-leftV, rightH);
    rect(leftV, height-1, width-leftV, -(height-rightH));
    fill(255);    
    stroke(155);
    line(leftV, 0, leftV, height-1);//Leftline
    line(leftV, 0, rightV, 0);//Topline
    line(leftV, height-1, width-1, height-1);//Bottonline
    line(rightV, 0, rightV, rightH-1);//Rightline
    line(rightV, rightH-1, width-1, rightH-1);
    line(width-1, rightH-1, width-1, height-1);
    stroke(0);
  }
}
