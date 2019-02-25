class Walk {
  float x, y;
  int size;
  int numFrames;
  int currentFrame;
  PImage[] frames;

  Walk(float x, float y) {
    numFrames = 4;
    currentFrame = 0;
    frames = new PImage[numFrames];

    frames[0] = loadImage("walk01.png");
    frames[1]= loadImage("walk02.png");
    frames[2]= loadImage("walk03.png");
    frames[3]= loadImage("walk04.png");

    this.x = x;
    this.y = y;
    size = 200;
  }

  void update() {
    currentFrame = (currentFrame + 1 ) % numFrames;
  }

  void display() {
    image(frames[currentFrame], x, y, size, size);
  }
}
