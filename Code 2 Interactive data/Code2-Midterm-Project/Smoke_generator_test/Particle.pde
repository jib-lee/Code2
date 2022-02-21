class Particle {
  float posX;
  float posY;
  float velX;
  float velY;
  float life;
  float alpha;
  color c;
  float emitRate;


  Particle(float posX, float posY, float life, color c, float emitRate) {
    this.posX = posX;
    this.posY = posY;
    this.velX = random(-0.75, 0.75);
    this.velY = random(-3.75, 0.5);
    this.life = life;
    alpha = 255;
    this.c = c;
    this.emitRate = emitRate;
  }

  void display() {
    noStroke();
    fill(c, map(life, 0, alpha, 0, 85));
    ellipse(this.posX, this.posY, life, life);
  }

  void update() {
    life -= emitRate;
    alpha -= emitRate;
    this.posX += this.velX;
    this.posY += this.velY;

    // check if it goes off
    if (this.posX > width || this.posX < 0) {
      life = 0;
    }
    if (this.posY > height || this.posY < 0) {
      life = 0;
    }
  }
}
