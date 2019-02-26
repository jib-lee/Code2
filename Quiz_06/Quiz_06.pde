float degrees = 0;
int s = 50;
float rd = 360;
int div = 6;

PImage sad;
void setup() {
  size(800, 800);
  sad = loadImage("soSAD.png");
}

void draw() {
  background (10);
  imageMode(CENTER);
  image(sad, width/2, height/2, s, s);
  degrees += 1;
  float x = cos (radians(degrees)) * 134;
  float y = sin (radians(degrees)) * 134;

  rectMode(CENTER);
  ellipse(400 + x, 400 +y, 30, 30);

  float offset1 = radians(rd/div);  //72 //360/5
  float x1 = cos(radians(degrees) + offset1) * 134;
  float y1 = sin(radians(degrees) + offset1) * 134;
  ellipse(400 + x1, 400 +y1, s, s);

  float offset2 = radians(rd/div * 2);
  float x2 = cos(radians(degrees) + offset2) * 134;
  float y2 = sin(radians(degrees) + offset2) * 134;
  ellipse(400 + x2, 400 +y2, s, s);

  float offset3 = radians(rd/div * 3);
  float x3 = cos(radians(degrees) + offset3) * 134;
  float y3 = sin(radians(degrees) + offset3) * 134;
  ellipse(400 + x3, 400 +y3, s, s);

  float offset4 = radians(rd/div * 4);
  float x4 = cos(radians(degrees) + offset4) * 134;
  float y4 = sin(radians(degrees) + offset4) * 134;
  ellipse(400 + x4, 400 +y4, s, s);

  float offset5 = radians(rd/div * 5);
  float x5 = cos(radians(degrees) + offset5) * 134;
  float y5 = sin(radians(degrees) + offset5) * 134;
  ellipse(400 + x5, 400 +y5, s, s);

  float offset6 = radians(rd);
  float x6 = cos(radians(degrees) + offset6) * 134;
  float y6 = sin(radians(degrees) + offset6) * 134;
  ellipse(400 + x6, 400 +y6, s, s);
}

void keyPressed() {
  if (keyCode==UP) {
    div += 1;
  }
  if (keyCode == DOWN) {
    div -= 1;
  }
}
