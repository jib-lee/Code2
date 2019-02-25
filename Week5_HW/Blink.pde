class Blink {
  float x, y;
  int size;
  int numFrames;
  int currentFrame;
  PImage[] frames;

  Blink(float x, float y) {
    numFrames = 4;
    currentFrame = 0;
    frames = new PImage[numFrames];

    frames[0] = loadImage("blink01.png");
    frames[1]= loadImage("blink02.png");
    frames[2]= loadImage("blink03.png");
    frames[3]= loadImage("blink04.png");

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
