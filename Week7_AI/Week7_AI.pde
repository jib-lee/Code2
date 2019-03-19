//sky
int numShapes = 100;
float[] xPositions = new float [numShapes];
float[] yPositions = new float [numShapes];


void setup() {
  size(1000, 800);
  imageMode(CENTER);

  //sky
  for (int i = 0; i < xPositions.length; i ++) {         
    xPositions[i] = random(width);
    yPositions[i] = map(i, 0, yPositions.length, 50, height-620);
  }
}

void draw() {
  drawSky();
  drawGrass();
}

void drawSky() {
  background(190, 220, 255);
  noStroke();

  for (int i =0; i < xPositions. length; i++) {
    float siz = map(i, 0, xPositions.length, 200, 10);
    fill (map(i, 0, xPositions.length, 225, 255));
    ellipse (xPositions[i], yPositions[i], siz, siz);

    xPositions[i] -= map(i, 0, xPositions.length, 1, 10);

    if (xPositions[i]< -siz/2) {
      xPositions[i] = width + siz/2;
    }
  }
}

void drawGrass() {
  int y = height/2;
  fill(180, 255, 130);
  rect(0, y, width, y);
}
