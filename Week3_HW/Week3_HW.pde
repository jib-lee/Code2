CircleButton c = new CircleButton(100, 250, 100);
SquareButton sq = new SquareButton(300, 250, 100);
FireworkButton fr = new FireworkButton(500, 250, 50, 50);
CircleButton c2 = new CircleButton(700, 150, 75);
CircleButton c3 = new CircleButton(700, 350, 55);
DragButton d = new DragButton(900,150,80);

void setup() {
  size (1000, 500);
  rectMode(CENTER);

  generators = new ArrayList<Generator>();
}

void draw() {

  fill(c.value, 170, 220);
  rect (100, 250, 200, 500);

  fill(200, 200, sq.value);
  rect (300, 250, 200, 500);

  fill(55, 75, 250);
  rect(500, 250, 200, 500);

  fill(10, 240, 130);
  rect(700, 250, 200, 500);

  fill(d.bg);
  rect(900, 250, 200, 500);

  c.update();
  c.display();

  sq.display();
  sq.update();

  fr.display();
  fr.checkPressed();

  c2.update();
  c2.display();

  noFill();
  stroke(255);
  rect(925, 370, d.boxSize + 10, d.boxSize + 10);
  
  d.display();
}

void mouseClicked() {
  if (c.value == 200 && dist(mouseX, mouseY, c.posX, c.posY) < c.size/2) {
    c.value = 255;
  } else {
    c.value = 200;
  }
  if (sq.value == 130 && mouseX < sq.posX + sq.size/2 & mouseX > sq.posY && mouseY < sq.posX && mouseY > sq.posY - sq.size/2) {
    sq.value = 255;
  } else {
    sq.value = 130;
  }

  if (d.value == 255) {
    d.bg = 45;
  } else {
    d.bg = 185;
  }

//cant make it stay??
  if (dist(mouseX, mouseY, c2.posX, c2.posY) < c2.size/2) {
    c3.display();
    c3.update();
  }
}

void mousePressed() {
  if (d.overBox) { 
    d.locked = true; 
    fill(255, 255, 255);
  } else {
    d.locked = false;
  }
  d.xOffset = mouseX-d.dx; 
  d.yOffset = mouseY-d.dy;
}

void mouseDragged() {
  if (d.locked) {
    d.dx = mouseX-d.xOffset; 
    d.dy = mouseY-d.yOffset;
  }
}

void mouseReleased() {
  d.locked = false;
}
