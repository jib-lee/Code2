class Walk {
  float x, y;
  int numFrames;
  int currentFrame;
  PImage[] frames;

  Walk() {
    numFrames = 4;
    currentFrame = 0;
    frames = new PImage[numFrames];

    frames[0] = loadImage("walk01");
    frames[1]= loadImage("walk02");
    frames[2]= loadImage("walk03");
    frames[3]= loadImage("walk04");
  }

  void update() {
    currentFrame = (currentFrame + 1 ) % numFrames;
  }

  void display() {
    image(frames[currentFrame], width/2, height/2, 200, 200);
  }
}
