Square sq1 = new Square(100, 100, 100, 50, "a", 3.5);
Square sq2 = new Square(300, 150, 70, 150, "b", .5);
Square sq3 = new Square(500, 120, 170, 170, "c", 2);
Square sq4 = new Square(400, 330, 110, 80, "d", 5);
Square sq5 = new Square(700, 390, 95, 165, "e", 1);

void setup() {
  size(1000, 800);
}

void draw() {
  sq1.display();
  sq1.onClick();
  sq2.display();
  sq2.onClick();
  sq3.display();
  sq3.onClick();
  sq4.display();
  sq4.onClick();
  sq5.display();
  sq5.onClick();
}

void keyPressed() {
  switch (key) {
  case 'a':
    sq1.isActive = true;
    sq1.startTime = millis();
    sq1.endTime = millis() + sq1.totalTime;
    break;
  case 'b':
    sq2.isActive = true;
    sq2.startTime = millis();
    sq2.endTime = millis() + sq2.totalTime;
    break;
  case 'c':
    sq3.isActive = true;
    sq3.startTime = millis();
    sq3.endTime = millis() + sq3.totalTime;
    break;
  case 'd':
    sq4.isActive = true;
    sq4.startTime = millis();
    sq4.endTime = millis() + sq4.totalTime;
    break;
  case 'e':
    sq5.isActive = true;
    sq5.startTime = millis();
    sq5.endTime = millis() + sq5.totalTime;
    break;
  }
}
