// HSB Color Wheel

/*
hue 0-360
 sat 0-100
 bright 0-100
 */

float angle;
float dist = 100;
int circs = 3;
float offset = 0;

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  colorMode(RGB);
  background(0, 25, 51);
  colorMode(HSB, 360, 100, 100);

  float incr = 360/circs;
  offset += .01;
  for (int i = 0; i < circs; i ++) {
    angle += incr + offset;
    float x = cos( radians(angle)) * dist; //horizontal
    float y = sin( radians(angle)) * dist; //vertical
    angle -= offset;

    angle %= 360; //keeps the angle between 360 and 0 and not go above 360 (e.g. 361 will be = 1, 385 will be 25 --> giving the remainder)
    if (angle < 0) angle+= 360; //if less than 0, add 360 to it

    fill(angle, 100, 100);
    ellipse(x + 250, y + 250, 30, 30);
  }

  fill(0, 0, 100);
  ellipse(250, 250, 3, 3);

  angle += 1;
  //angle %= 360; //keeps the angle between 360 and 0 and not go above 360 (e.g. 361 will be = 1, 385 will be 25 --> giving the remainder)
  //if (angle < 0) angle+= 360; //if less than 0, add 360 to it
}

// Add in key presses to move the bigger circle

void keyPressed() {
  if (key == '=') {
    circs++;
  }
  if (key == '-') {
    circs--;
  }
}
