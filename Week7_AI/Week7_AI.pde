//size
int s = 250;
//Hi
boolean sayHi;
//sky
int numShapes = 100;
float[] xPositions = new float [numShapes];
float[] yPositions = new float [numShapes];

Deer d;
Deer d2;

void setup() {
  size(1000, 800);
  sayHi = false;
  //sky
  for (int i = 0; i < xPositions.length; i ++) {         
    xPositions[i] = random(width);
    yPositions[i] = map(i, 0, yPositions.length, 50, height-620);
  }

  d = new Deer(s, s);
  d2 = new Deer (s, s);

  imageMode(CENTER);
}

void draw() {
  drawSky();
  drawGrass();

  d.displayCharacter();
  d.update();
  d2.displayCharacter();
  d2.update();
  
  if (dist (d.pos.x, d.pos.y, d2.pos.x, d2.pos.y) < s){
   //sayHi = !sayHi;
   sayHi = true;
  }
}

void drawSky() {
  background(190, 220, 255);
  noStroke();

  for (int i =0; i < xPositions. length; i++) {
    float siz = map(i, 0, xPositions.length, 200, 10);
    fill (map(i, 0, xPositions.length, 225, 255));
    ellipse (xPositions[i], yPositions[i], siz, siz);

    xPositions[i] -= map(i, 0, xPositions.length, 5, 10);

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
