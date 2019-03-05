PVector pos, vel, acc;
float s = 80;
PVector gravity;
boolean over, caughtBall;
PVector offset = new PVector (0.0, 0.0);

void setup() {
  size (900, 900); 

  pos = new PVector(width/2, height/2);
  vel = new PVector(1.5, 2);
  acc = new PVector(0, 0.2);

  gravity = new PVector(0, 0.5);
}

void draw () {
  background (170, 200, 255);
  pos.add(vel);
  vel.add (gravity);
  //vel.add(acc);

  if (pos.x > width-s/2 || pos.x < s/2) {
    vel.x = vel.x * -0.92;
  }
  if (pos.y > height - s/2) {
    vel.y = vel.y * -0.92;
    pos.y = height - s/2 ;
  }

  noStroke();
  fill(250, 130, 180);
  ellipse (pos.x, pos.y, s, s);

  if (dist(mouseX, mouseY, pos.x, pos.y) < s/2) {
    over = true;
  } else {
    over = false;
  }
}

void mousePressed() {
  if (over) {
    caughtBall = true;
  } else {
    caughtBall = false;
  }
  offset.x = mouseX - pos.x;
  offset.y = mouseY - pos.y;
}

void mouseDragged() {
  if (caughtBall) {
    pos.x = mouseX - offset.x;
    pos.y = mouseY - offset.y;
  }
}

void mouseReleased() {
  caughtBall = false;
}
