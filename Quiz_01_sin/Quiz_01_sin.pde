float counter = 0;
void setup(){
  size(800,500);
}

void draw(){
  background(10);
  counter += TWO_PI/100;
float x = width/2 + sin(counter) * 300;
ellipse(x, height/2,50,50);
}
