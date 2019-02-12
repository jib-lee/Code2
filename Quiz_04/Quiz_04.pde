//ArrayList<> col = new ArrayList<>();
color[] buttonCol;

void setup() {
  size(1000, 800);
  
  buttonCol = new color[3];
  buttonCol[0] = color(255, 0, 0);
  buttonCol[1] = color(0, 255, 0);
  buttonCol[2] = color(0, 0, 255);

  for (int i = 0; i < buttonCol.length; i++) {
    //buttonCol[i];
  }
}

void draw() {

  if (dist(mouseX, mouseY, width/2, height/2) < 50) {
    stroke(255, 255, 10);
  } else {
    stroke(0);
  }


  ellipse(width/2, height/2, 100, 100);
}

void mouseClicked() {
  if (dist(mouseX, mouseY, width/2, height/2) < 50) {
    for (int i = 0; i < buttonCol.length; i++) {
     
       fill(buttonCol[i]);
      i += 1;
    
    }
  }
}
