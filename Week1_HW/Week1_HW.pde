float lag = 0.02;
float x;
float y;

PImage bunny;

void setup() {
  size(1000, 800);
  rectMode(CENTER);

  bunny = loadImage("Bunny.png");
}

void draw()
{
  background(20);
  float Xpos = mouseX;
  float dx = Xpos - x;
  x += dx *lag;

  float Ypos = mouseY;
  float dy = Ypos - y;
  y += dy * lag;


  if (mousePressed) {
    x = mouseX;
    y= mouseY;
  } else {
    x += dx *lag;
    y += dy * lag;
  }

  //rotate(radians(map(mouseX, 0, width, 0, 360)));

  //ellipse (x,y,50,50);

  image(bunny, x, y, bunny.width /2, bunny.height/2);
}
