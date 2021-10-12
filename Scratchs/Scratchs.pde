Cat myCat;
GUI myGUI;
ifElse if1;
Walk w1,w2;
Rotate r1;
forloop f1;
Delay d1;
void setup(){
  size(1280,720);
  frameRate(120);
  myGUI = new GUI();
  myCat = new Cat(myGUI.rightH/6,myGUI.rightV+(width-myGUI.rightV)/2,myGUI.rightH/2);
  w1 = new Walk();
  w2 = new Walk();
  r1 = new Rotate();
  if1 = new ifElse();
  f1 = new forloop();
  d1 = new Delay();
  w1.setWalk("R",5);
  w2.setWalk("R",20);
  r1.setTurn("R",0);
  d1.setDelay(1000);
  f1.setVal(5);
  if1.addChildTrue(w1);
  if1.addChildFalse(r1);
  if1.addChild(f1);
  f1.addLoop(w2);
  w2.addChild(d1);

  

}

void draw() {
  background(200);
  myGUI.catFrame();
  itemXY();
  myCat.draw();
  myGUI.boardFrame();
  myGUI.itemFrame();
  myGUI.itemShowCase();
  if1.draw();
}

void keyPressed() {
  if1.action(myCat);
}

void mousePressed() {
  if1.mP();
}

void mouseDragged()
{
  if1.mD();
}

void mouseReleased() {
  if1.mR();
}

void itemXY() {
  fill(0);
  text(myCat.posx,myGUI.rightV+50,myGUI.rightH-10);
  text(myCat.posy,myGUI.rightV+300,myGUI.rightH-10);
}

class Scratch {

}
