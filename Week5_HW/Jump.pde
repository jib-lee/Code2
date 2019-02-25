class Jump {
  float x, y;
  int size;
  int numFrames;
  int currentFrame;
  PImage[] frames;

  Jump(float x, float y) {
    numFrames = 3;
    currentFrame = 0;
    frames = new PImage[numFrames];

    frames[0] = loadImage("jump01.png");
    frames[1]= loadImage("jump02.png");
    frames[2]= loadImage("jump03.png");

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
