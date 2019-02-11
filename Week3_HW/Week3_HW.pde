int value1 = 200;
int value2 = 130;

CircleButton c = new CircleButton(100, 250, 100);

SquareButton sq = new SquareButton(300, 250, 100);

FireworkButton fr = new FireworkButton(500,250,50,50);

void setup() {
  size (1000, 500);
  rectMode(CENTER);
  
  generators = new ArrayList<Generator>();
  
}

void draw() {
  background(0);

  fill(value1, 170, 220);
  rect (100, 250, 200, 500);

  fill(200, 200, value2);
  rect (300, 250, 200, 500);

  fill(55,75,250);
  rect(500, 250, 200, 500);

  fill(255);
  rect(700, 250, 200, 500);

  fill(0);
  rect(900, 250, 200, 500);

  c.display();
  c.update();

  sq.display();
  sq.update();
  
  fr.display();
  fr.checkPressed();
  //if(fr.getButtonStatus()){
  // //
  //}
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
}
