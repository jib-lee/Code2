float lag = 0.02;
float x;
float y;
float dist1 = mouseX;
float dist2 = x;
float totalTime = 3;
float distance = dist1 - dist2;
float scaler = 0;

PImage bunny;

void setup() {
  size(1000, 800);
  rectMode(CENTER);

  bunny = loadImage("Bunny.png");
  
  x = dist2;
  totalTime *= 1000;
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
  
  //float currentTime = millis()%totalTime;
  //if(currentTime > totalTime/2){
  // currentTime = totalTime - currentTime; 
  //}
  //scaler = currentTime/(totalTime/2);
  
  //x = dist1 + distance * scaler;
}
