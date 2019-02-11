//Taken and modifies from Code 1 class code for making fire

ArrayList<Generator> generators;

class Particle {
  float posX;
  float posY;
  float velX;
  float velY;
  float life;
  float alpha;

  Particle(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    this.velX = random(-40, 40);
    this.velY = random(-40, 40);
    life = 25;
    alpha = 255;
  }

  void display() {
    noStroke();

    fill(255, map(life,50,10,70,230), 30, map(life,50,0,230,0));
    ellipse(this.posX, this.posY, life, life);
  }

  void update() {
    life-=3.5;
    alpha-= 7;
    this.posX += this.velX;
    this.posY += this.velY;

  }
}

class Generator {
  ArrayList<Particle> particles;
  float posX;
  float posY;
  float rate; 

  Generator(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    particles = new ArrayList<Particle>();
  }

  void addParticles() {
    particles.add(new Particle(this.posX, this.posY));
  }

  void drawParticles() {
    for (int i = 0; i < particles.size(); i++) {
      Particle b = particles.get(i);
      b.update();
      b.display();
    } 

    for (int i = particles.size() - 1; i >= 0; i--) {
      Particle p = particles.get(i);
      if (p.life < 0) {
        particles.remove(i);
      }
    }
  }
}
