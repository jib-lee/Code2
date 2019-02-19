class DragButton {
  float dx;
  float dy;
  int boxSize;
  boolean overBox = false;
  boolean locked = false;
  float xOffset = 0.0; 
  float yOffset = 0.0;
  int value;
  int bg;

  DragButton(int posX, int posY, int size) {
    dx = posX;
    dy = posY;
    boxSize = size;
    value = 100;
    bg = 185;
  }

  void display() {
    if (mouseX > dx-boxSize && mouseX < dx+boxSize && 
      mouseY > dy-boxSize && mouseY < dy+boxSize) {
      overBox = true;
    } else {
      overBox = false;
    }
    fill(value, 110, value);
    rect(dx, dy, boxSize, boxSize);

    if (dx < 930 && dx > 920 && dy < 375 && dy > 365) {
      value = 255;
    } else {
      value = 100;
    }
  }
}
