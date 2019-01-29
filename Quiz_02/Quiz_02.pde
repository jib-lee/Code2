String displayQuote;

int value1 = 200;
int value2 = 130;

void setup() {
  size (1000, 500);
}

void draw() {

  background(0);


  fill(value1, 170, 220);
  rect (0, 0, 500, 500);


  fill(200, 200, value2);
  rect (500, 0, 500, 500);

  if (dist(mouseX, mouseY, width/4, height/2) < 50) {
    fill(255);
  } else {
    fill(180);
  }
  ellipse(width/4, height/2, 100, 100);

  if (mouseX < 800 && mouseX > 700 && mouseY < 300 && mouseY > 200) {
    fill(255);
  } else {
    fill(180);
  }
  rect (700, 200, 100, 100);


  textSize(42);
  fill(255); 
  text ("Hi", 470, 350);
}

void mouseClicked() {
  if (value1 == 200 && dist(mouseX, mouseY, width/4, height/2) < 50) {
    value1 = 255;
  } else {
    value1 = 200;
  }

  if (value2 == 130 && mouseX < 800 && mouseX > 700 && mouseY < 300 && mouseY > 200) {
    value2 = 255;
  } else {
    value2 = 130;
  }
}
