class CircleButton {
 int size;
 int posX;
 int posY;
 int col;
 
 CircleButton(int posX, int posY, int size){
   this.posX = posX;
   this.posY = posY;
   this.size = size;
   this.col = 255;
 }
 
 void display(){
   fill(col);
    ellipse(posX,posY,size,size);
 }
 
 void update(){
    if (dist(mouseX, mouseY, size, size) < 50) {
    fill(col);
  } else {
    fill(180);
  }
 }
}
