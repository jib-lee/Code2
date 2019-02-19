Square sq1 = new Square(100,100,100,50, "a");
Square sq2 = new Square(300,150,70,150, "b");
Square sq3 = new Square(500,120,170,170, "c");
Square sq4 = new Square(400,330,110,80, "d");
Square sq5 = new Square(700,390,95,165,"e");

void setup(){
  size(1000,800);

}

void draw(){
  

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

void mouseClicked(){

}
