class Button {
  int size;
  int posX;
  int posY;
  color red;
  color orange;
  color yellow;
  color green;
  color blue;
  color indigo;
  color magenta;

  int click;

  Button(int posX, int posY, int size) {
    this.posX = posX;
    this.posY = posY;
    this.size = size;
    red = color(255, 0, 0);
    orange = color(255, 145, 17);
    yellow = color(255, 245, 20);
    green = color(0, 255, 0);
    blue = color(0, 0, 255);
    indigo = color(165, 30, 230);
    magenta = color(245, 20, 200);
    click = 1;
  }

  void display() {
    strokeWeight(2);
    if (dist(mouseX, mouseY, posX, posY) < size/2) {
      stroke(255);
    } else {
      stroke(0);
    }

    if (click == 1) {
      fill(red);
    }
    if (click == 2) {
      fill(orange);
    }
    if (click == 3) {
      fill(yellow);
    }
    if (click == 4) {
      fill(green);
    }
    if (click == 5) {
      fill(blue);
    }
    if (click == 6) {
      fill(indigo);
    }
    if (click == 7) {
      fill(magenta);
    }

    ellipse(posX, posY, size, size);
  }
}
