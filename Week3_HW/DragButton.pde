class DragButton{
  float dx;
float dy;
int boxSize;
boolean overBox = false;
boolean locked = false;
float xOffset = 0.0; 
float yOffset = 0.0; 

DragButton(int posX, int posY, int size){
  // bx = 900;
  //by = 150;
  dx = posX;
  dy = posY;
  boxSize = size;
}

void display(){
   if (mouseX > dx-boxSize && mouseX < dx+boxSize && 
    mouseY > dy-boxSize && mouseY < dy+boxSize) {
    overBox = true;
  } else {
    overBox = false;
  }
  fill(value4, 110, value4);
  rect(dx, dy, boxSize, boxSize);

  if (dx < 930 && dx > 920 && dy < 375 && dy > 365) {
    value4 = 255;
  } else {
    value4 = 100;
  }
}
}
