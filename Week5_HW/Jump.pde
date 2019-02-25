class Jump {
  float x, y;
  int numFrames;
  int currentFrame;
  PImage[] frames;

  Jump() {
    numFrames = 3;
    currentFrame = 0;
    frames = new PImage[numFrames];

    frames[0] = loadImage("jump01");
    frames[1]= loadImage("jump02");
    frames[2]= loadImage("jump03");
   
  }
  
  void update(){
   currentFrame = (currentFrame + 1 ) % numFrames; 
  }
  
  void display(){
   image(frames[currentFrame], width/2, height/2, 200, 200); 
  }
}
