Blink bl;
Jump jp;
Walk wk;

boolean clicked;
boolean jump;
boolean walk;
PImage eyedude;

void setup() {
  size(800, 800);
  frameRate(10);
  imageMode(CENTER);
  bl = new Blink(width/2, height/2);
  jp = new Jump(width/2, height/2);
  wk = new Walk(width/2, height/2);

  clicked = false;
  jump = false;
  walk = false;
  eyedude = loadImage("walk01.png");
}

void draw() {
  background(140, 200, 250);
  fill(255);
  textSize(20);
  text("Click to Blink", 20, 25);
  text("Up Arrow to Jump", 20, 50);
  text("Right Arrow to Walk", 20, 75);
  noStroke();
  fill(100, 250, 100);
  rect(0, 430, width, height/2);

  if (clicked) {
    bl.display();
    bl.update();
  } else if (jump) {
    jp.display();
    jp.update();
  } else if (walk) {
    wk.display();
    wk.update();
  } else {
    image(eyedude, width/2, height/2, 200, 200);
  }
}

void mouseClicked() {
  if (mouseX < bl.x + bl.size/2 && mouseX > bl.x - bl.size/2 && mouseY < bl.y + bl.size/2 && mouseY > bl.y - bl.size/2) {
    //click to start blinking & click again to stop
    clicked = !clicked;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      jump = !jump;
    }
    if (keyCode == RIGHT) {
      walk = !walk;
    }
  }
}
