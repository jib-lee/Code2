class CircBound {
  float posX;
  float posY;
  int radius;
  boolean isInside;
  float life;
  color col;
  float emit;

  Generator g; //= new Generator(posX, posY, life, col);

  CircBound(float posX, float posY, int r, float life, color col, float emit) {
    this.posX = posX;
    this.posY = posY;
    this.radius = r;
    isInside = false;
    this.life = life;
    this.col = col;
    this.emit = emit;

  }
  
  void display(){
   noFill();
   noStroke();
   ellipse(posX, posY, radius, radius);
  
  if (isInside){
   g.addParticles();
   g.drawParticles();
  }
    
  //}
  }
  
  void hitDetect(){
   if (dist(mouseX, mouseY, posX, posY)< radius){
       isInside = !isInside;
       makeGen();
   }
  }
  
  void makeGen(){

       g = new Generator(posX, posY, life, col, emit);
  }
}
