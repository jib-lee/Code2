class SquareButton {
 int size;
 int posX;
 int posY;
 int col;
 
 SquareButton(int posX, int posY, int size){
   this.posX = posX;
   this.posY = posY;
   this.size = size;
   this.col = 255;
 }
 
 void display(){
   rectMode(CENTER);
   fill(col);
    rect(posX,posY,size,size);
 }
 
 void update(){
    if (mouseX < posX + size && mouseX > posX && mouseY < posY + size && mouseY > posY) {
    fill(col);
  } else {
    fill(180);
  }
 }
}
