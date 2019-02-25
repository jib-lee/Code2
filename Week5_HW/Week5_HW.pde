Blink bl;
Jump jp;
Walk wk;

void setup() {
  size(800, 800);
  frameRate(10);
  imageMode(CENTER);
  bl = new Blink(width/4, height/2);
  jp = new Jump(width/2, height/2);
  wk = new Walk(width - 200, height/2);
}

void draw() {
  background(140, 200, 250);

  bl.display();

  jp.display();

  wk.display();

  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == UP) {

        jp.update();
      }

      if (keyCode == RIGHT) {
        wk.update();
      }
    }
  }
}

void mouseClicked() {
  if (mouseX < bl.x + bl.size/2 && mouseX > bl.x - bl.size/2 && mouseY < bl.y + bl.size/2 && mouseY > bl.y - bl.size/2) {
    bl.update();
  }
}

//void keyPressed(){
// if (key == CODED){
//  if (keyCode == UP){

//    jp.update();
//  }
// }
//}
