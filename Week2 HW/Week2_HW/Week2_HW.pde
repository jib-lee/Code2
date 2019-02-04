float posX, posY;
float angle = 0;

void setup() {
  size(1700, 1000);
}

void draw() {
  background(159, 197, 250);
  
  drawFinishLine();

  
  pushMatrix();
  translate(50, 25);
  rotate(radians(angle));
  car(posX, posY);
  popMatrix();

  Buttons();

//Doesn't show up
  if (posX > 1600) {
    textMode(CENTER);
    textSize(44);
    fill(0,100,240);
    text("GOAL!", width/2, height/2);
  }
}

void mousePressed() {
  //left
  if (mouseX < 940 && mouseX > 860 && mouseY < 950 && mouseY > 870) {
    //posX -= 10;
    angle -= 1.2;
  }

  //right
  if (mouseX < 1140 && mouseX > 1060 && mouseY < 950 && mouseY > 870) {
    //posX += 10;
    angle += 1.2;
  }

  //down
  if (mouseX < 1040 && mouseX > 960 && mouseY < 950 && mouseY > 870) {
    posY += 10;
  }

  //up
  if (mouseX < 1040 && mouseX > 960 && mouseY < 850 && mouseY > 770) {
    posY -= 10;
  }
}

void drawFinishLine() {

  fill(255, 0, 0);

  rect(1600, 0, 15, height);
}
