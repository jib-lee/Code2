float posX, posY;
float angle = 0;

void setup() {
  size(1200, 1000);
 
}

void draw() {
  background(159, 197, 250);
  pushMatrix();
  translate(50, 25);
  rotate(radians(angle));
  car(posX, posY);
  popMatrix();

  Buttons();
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
