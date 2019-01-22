float xPos = 50;
float speed = 5;
float easeAmount = .5;

void setup(){
  size(800,500);
}

void draw(){
  background(10);
  ellipse(xPos, height/2, 50,50);
  xPos += speed;
speed += easeAmount;
  //speed = map();
  
  if (xPos> 750 || xPos < 50){
   speed = -speed; 
  }
}
