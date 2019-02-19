class Square {
  int x;
  int y;
  int w;
  int h;
  String letter;
  color pink;
  color purple;
  color grey;

  float startTime, endTime;
  float totalTime; // = 2;
  boolean isActive = false;

  Square(int x, int y, int w, int h, String letter, float time) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.letter = letter;
    pink = color (255, 200, 232);
    purple = color (230, 100, 215);
    grey = color (100);
    this.totalTime = time; 
    totalTime *= 1000;
  }

  void display() {
    rectMode(CENTER);

    if (isActive) {
      fill(grey);
      restartColor();
    } else if (mouseX < x + w/2 && mouseX > x - w/2 && mouseY < y + h/2 && mouseY > y - h/2){
      fill(pink);
    } else {
     fill(purple) ; 
    }
   
    rect (x, y, w, h);

    textSize(25);
    fill(0);
    text (letter, x, y);
  }

  void onClick() {
    if (mousePressed && mouseX < x + w/2 && mouseX > x - w/2 && mouseY < y + h/2 && mouseY > y - h/2) {
      isActive = true;
      startTime = millis();
      endTime = millis() + totalTime;
    }
  }

  void restartColor() {
    if (millis() > totalTime + startTime) {
      isActive = false;
    }
  }
}
