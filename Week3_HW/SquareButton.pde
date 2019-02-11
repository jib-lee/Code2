class SquareButton {
  int size;
  int posX;
  int posY;
  int col;

  SquareButton(int posX, int posY, int size) {
    this.posX = posX;
    this.posY = posY;
    this.size = size;
    this.col = 180;
  }

  void display() {
    rectMode(CENTER);
    if (mouseX < posX + size/2 && mouseX > posX - size/2 && mouseY < posY + size/2 && mouseY > posY - size/2) {
      fill(255);
    } else {
      fill(col);
    }
    rect(posX, posY, size, size);
  }

  void update() {
  }
}
