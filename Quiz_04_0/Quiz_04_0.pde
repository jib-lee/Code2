int arrayLength = 10;
int arrayLength2 = 10;
Button[][] many = new Button[arrayLength][arrayLength2];

void setup() {
  size(1000, 800);

  for (int i = 0; i < arrayLength; i++) {
    for (int j = 0; j < arrayLength2; j++) {
      many[i][j] = new Button(i* width/arrayLength + 50, j * height/arrayLength2 + 50, int(random(60, 120)));
    }
  }
}

void draw() {
  background(25);

  for (int i = 0; i < arrayLength; i++) {
    for (int j = 0; j < arrayLength2; j++) {
      many[i][j].display();
    }
  }
}

void mouseClicked() {
  for (int i = 0; i < arrayLength; i++) {
    for (int j = 0; j < arrayLength2; j++) {
      if (dist(mouseX, mouseY, many[i][j].posX, many[i][j].posY) < many[i][j].size/2) {
        many[i][j].click++; 

        if (many[i][j].click == 8) {
          many[i][j].click = 1;
        }
      }
    }
  }
}
