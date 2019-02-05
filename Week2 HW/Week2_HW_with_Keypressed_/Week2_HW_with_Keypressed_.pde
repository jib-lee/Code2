float posX, posY, posXX, posYY;
float angle, angle2;
boolean up;
boolean down;
boolean right;
boolean left;

void setup() {
  size(1800, 800);
  rectMode(CENTER);

  posX= 200;
  posY = 200;

  posXX = 400;
  posYY = 200;
}

void draw() {
  background(159, 197, 250);
  pushMatrix();
  rotate(radians(angle));
  carOne(posX, posY);
  popMatrix();

  pushMatrix();
  rotate(radians(angle2));
  carTwo(posXX, posYY);
  popMatrix();
  
  finishLine();

  if (up) {
    posY -= 5;
  }
  if (down) {
    posY += 5;
  }
  if (right) {
    //posX += 5;
    angle += 0.5;
  }
  if (left) {
    //posX -= 5;
    angle -= 0.5;
  }

  if (keyPressed) {
    if (key == 'a') {
      angle2 -= 0.5;
    } else if (key == 's') {
      posYY += 5;
    } else if (key == 'd') {
      angle2 += 0.5;
    } else if (key == 'w') {
      posYY -= 5;
    }
  }
  
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      up = true;
    }
    if (keyCode == DOWN) {
      down = true;
    }
    if (keyCode == RIGHT) {
      right = true;
    }
    if (keyCode == LEFT) {
      left = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      up = false;
    }
    if (keyCode == DOWN) {
      down = false;
    }
    if (keyCode == RIGHT) {
      right = false;
    }
    if (keyCode == LEFT) {
      left = false;
    }
  }
}

void finishLine(){
  stroke(255, 0, 0);
strokeWeight(5);
  line(1700,0,1700,800);
  textSize(40);
  fill(255,0,0);
  text("GOAL", 1570,700);
}
