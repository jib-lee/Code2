class Blink {
  float x, y;
  int numFrames;
  int currentFrame;
  PImage[] frames;

  Blink() {
    numFrames = 4;
    currentFrame = 0;
    frames = new PImage[numFrames];

    frames[0] = loadImage("blink01");
    frames[1]= loadImage("blink02");
    frames[2]= loadImage("blink03");
    frames[3]= loadImage("blink04");
  }
  
  void update(){
   currentFrame = (currentFrame + 1 ) % numFrames; 
  }
  
  void display(){
   image(frames[currentFrame], width/2, height/2, 200, 200); 
  }
}
