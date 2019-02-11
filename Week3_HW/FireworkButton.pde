class FireworkButton {
  boolean held;
  float x, y;
  float w, h;

  FireworkButton(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void checkPressed() {
    if (mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2 && mousePressed) {
      held = true;
    } else {
      held = false;
    }
  }

  void display() {
    if (held) {
      for (int i = 0; i < generators.size(); i++) {
        Generator g = generators.get(i);
        g.addParticles();
        g.drawParticles();
      }
      generators.add(new Generator(x, y));

      fill(255);
    } else {
      fill(180);
    }
    ellipse(x, y, w, h);
  }

}
