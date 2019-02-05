ArrayList<rainGenerator> rain;

void setup() {
  size(400, 800);

  for (int i = 0; i <= height; i++) {
    for (int j = 0; j <= width; j++) {
      float b = map(i, 0, height, 255, 170);

      stroke(100, 150, b);
      point(j, i);
    }
  }

  rain = new ArrayList<rainGenerator>();
}

void draw() {
  
  
  for (int i = 0; i < rain.size(); i++) {
    rainGenerator g = rain.get(i);
    g.addRain();
    g.drawRain();
    
   rain.add(new rainGenerator((random(0, width)), height));
  }
 
}

class rainParticle {
  float posX;
  float posY;
  float velX;
  float velY;
  float r;
  float size;

  rainParticle(float posX, float posY) {
    this.posX= posX;
    this.posY = posY;
    this.velX = 0;
    this.velY = 15;
    size = 15;
  }

  void display() {
    noStroke();
    fill(map(r, 0, height, 150, 200), 165, 255);
    ellipse(this.posX, this.posY, size, size);
  }

  void update() {
    this.posY += this.velY;
  }
}

class rainGenerator {
  ArrayList<rainParticle> particles;
  float posX;
  float posY;
  float rate;

  rainGenerator(float posX, float posY) {
    this.posX = random(0,width); 
    this.posY = posY;
    particles = new ArrayList<rainParticle>();
  }

  void addRain() {
    particles.add(new rainParticle(this.posX, this.posY));
  }

  void drawRain() {
    for (int i = 0; i < particles.size(); i++) {
      rainParticle b = particles.get(i);
      b.update();
      b.display();
    }
  }
}
