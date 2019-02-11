int value1 = 200;
int value2 = 130;
int value3 = 240;
int value4 = 100;
int lastBg = 185;
CircleButton c = new CircleButton(100, 250, 100);
SquareButton sq = new SquareButton(300, 250, 100);
FireworkButton fr = new FireworkButton(500, 250, 50, 50);
CircleButton c2 = new CircleButton(700, 150, 75);
CircleButton c3 = new CircleButton(700, 350, 55);

float bx;
float by;
int boxSize = 80;
boolean overBox = false;
boolean locked = false;
float xOffset = 0.0; 
float yOffset = 0.0; 

void setup() {
  size (1000, 500);
  rectMode(CENTER);

  generators = new ArrayList<Generator>();

  bx = 900;
  by = 150;
}

void draw() {
  //background(0);

  fill(value1, 170, 220);
  rect (100, 250, 200, 500);

  fill(200, 200, value2);
  rect (300, 250, 200, 500);

  fill(55, 75, 250);
  rect(500, 250, 200, 500);

  fill(10, value3, 130);
  rect(700, 250, 200, 500);

  fill(lastBg);
  rect(900, 250, 200, 500);

  c.update();
  c.display();


  sq.display();
  sq.update();

  fr.display();
  fr.checkPressed();

  c2.update();
  c2.display();

  //cant make it stay??
  if (mousePressed && dist(mouseX, mouseY, 700, 150) < 75/2) {
    c3.display();
    c3.update();
  }

  // Test if the cursor is over the box 
  if (mouseX > bx-boxSize && mouseX < bx+boxSize && 
    mouseY > by-boxSize && mouseY < by+boxSize) {
    overBox = true;
  } else {
    overBox = false;
  }
  fill(value4,110,value4);
  rect(bx, by, boxSize, boxSize);
  
  noFill();
  stroke(255);
  rect(925, 370, boxSize + 10, boxSize + 10);
  
  if(bx < 930 && bx > 920 && by < 375 && by > 365){
    value4 = 255;
  } else {
   value4 = 100; 
  }
}

void mouseClicked() {
  if (value1 == 200 && dist(mouseX, mouseY, 100, 250) < 50) {
    value1 = 255;
  } else {
    value1 = 200;
  }
  if (value2 == 130 && mouseX < 350 && mouseX > 250 && mouseY < 300 && mouseY > 200) {
    value2 = 255;
  } else {
    value2 = 130;
  }
  
  if (value4 == 255){
    lastBg = 45;
  } else {
   lastBg = 185; 
  }
}

void mousePressed() {
  if (overBox) { 
    locked = true; 
    fill(255, 255, 255);
  } else {
    locked = false;
  }
  xOffset = mouseX-bx; 
  yOffset = mouseY-by;
}

void mouseDragged() {
  if (locked) {
    bx = mouseX-xOffset; 
    by = mouseY-yOffset;
  }
}

void mouseReleased() {
  locked = false;
}
