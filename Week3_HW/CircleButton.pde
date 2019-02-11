class CircleButton {
  int size;
  int posX;
  int posY;
  int col;

  CircleButton(int posX, int posY, int size) {
    this.posX = posX;
    this.posY = posY;
    this.size = size;
    this.col = 180;
  }

  void display() {
    
    if (dist(mouseX, mouseY, posX, posY) < size/2) {
      fill(255);
    } else {
      fill(col);
    }
    ellipse(posX, posY, size, size);
  }

  void update() {
   
  }
  
  
}
