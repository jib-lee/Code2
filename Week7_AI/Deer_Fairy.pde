class Deer {
  int w;
  int h;

  //STATES
  int STAND = 0;
  int BLOOM = 1;
  int HELLO = 2;
  int KICK = 3;
  int SPLIT = 4;
  int WALK = 5;
  int STATE = STAND;

  String[] stateNames = {"STAND", "BLOOM", "HELLO", "KICK", "SPLIT", "WALK"};
  float[][] choices = {
    // "STAND", "BLOOM", "HELLO", "KICK", "SPLIT", "WALK"
    { .3, .35, .01, .14, .15, .05}, 
    { .4, .15, .01, .09, .25, .1}, 
    { .25, .16, .01, .1, .15, .33 }, 
    { .1, .06, .01, .23, .4, .2}, 
    { .05, .29, .01, .05, .35, .25}, 
    { .02, .03, .01, .15, .1, .69}
  };

  // movement variables
  PVector velo, pos;
  int facingDirection = 1;
  float speed = 3;

  //Standing
  PImage stand = new PImage();
  boolean faceNewDirection = true;

  //Bloom animation
  int numBloomFrames = 6;
  int bloomAnimationSpeed = 7;
  PImage[] bloom = new PImage[numBloomFrames];

  //Hello Animation
  int numHelloFrames = 6;
  int helloAnimationSpeed = 7;
  PImage[] hello = new PImage[numHelloFrames];

  //Kick Animation
  int numKickFrames = 3;
  int kickAnimationSpeed = 5;
  PImage[] kick = new PImage[numKickFrames];

  //Split Animation
  int numSplitFrames = 4;
  int splitAnimationSpeed = 5;
  PImage[] split = new PImage[numSplitFrames];

  //Walk animation
  int numWalkFrames = 6;
  int walkAnimationSpeed = 7;
  PImage[] walk = new PImage[numWalkFrames];

  //animation handler
  int frameNumber = 0;
  //
  // ———————— ———————— ———————— ———————— ———————— ———————— ———————— CONSTRUCTOR
  //

  Deer(int w, int h) {
    this.w = w;
    this.h = h;
    velo = new PVector(0, 0);
    pos = new PVector(random(width), random(height/2, height));

    //LOAD THE IMAGES

    //stand
    stand = loadImage("deerstand01.png");

    //kick
    for (int i = 1; i <= numKickFrames; i++) {
      kick[i-1] = loadImage("deerkick0" + i + ".png");
    }

    //bloom
    for (int i = 1; i <= numBloomFrames; i++) {
      bloom[i-1] = loadImage("deerbloom0" + i + ".png");
    }

    //hello
    for (int i = 1; i <= numHelloFrames; i++) {
      hello[i-1] = loadImage("deerhello0" + i + ".png");
    }

    //split
    for (int i = 1; i <= numSplitFrames; i++) {
      split[i-1] = loadImage("deersplit0" + i + ".png");
    }

    //walk
    for (int i = 1; i <= numWalkFrames; i++) {
      walk[i-1] = loadImage("deerwalk0" + i + ".png");
    }
  }

  void update() {
    //move the character on grass
    pos.add(velo);
    //screen wrap
    if (pos.y < height/2) {
      pos.y = height;
    }
    if (pos.x > width) {
      pos.x = 0;
    } else if (pos.x < 0) {
      pos.x = width;
    }

    if (faceNewDirection) {
      if (random(1) < .5) {
        facingDirection = 1;
      } else {
        facingDirection = -1;
      }
      faceNewDirection = false;
    }

    //Movement state changes
    switch(STATE) {
    case 0: //stand
    default:
      STATE = getNewState();
      break;
    case 1: //bloom
    case 2: //hello
    case 3: //kick
    case 4: //split
      velo = new PVector(0, 0);
      break;
    case 5: //walk
      velo = new PVector (-facingDirection * speed, 0);
      break;
    }

    if (sayHi) {
      STATE = HELLO;
      sayHi = false;  //only works on one deer?
    }

    //if Keypress...
    if (keyPressed) {
      if (key == 'k') {
        println("kick");
        STATE = KICK;
        frameNumber = 0;
      }
    }
  }

  //
  // ———————— ———————— ———————— ———————— ———————— ———————— ———————— ANIMATION HANDLERS
  //
  void displayCharacter() {
    pushMatrix();
    translate(pos.x, pos.y);
    scale (facingDirection, 1);
    //
    // —————————————————————————————— ANIMATION STATE MACHINE
    //
    switch (STATE) {
    case 0: //stand
    default:
      image(stand, 0, 0, w, h);
      break;
    case 1: //bloom
      playBloomAnimation();
      break;
    case 2: //hello
      playHelloAnimation();
      break;
    case 3: //bloom
      playKickAnimation();
      break;
    case 4: //bloom
      playSplitAnimation();
      break;
    case 5: //bloom
      playWalkAnimation();
      break;
    }
    popMatrix();
  }

  void playBloomAnimation() {
    image(bloom[frameNumber], 0, 0, w, h);
    if (frameCount%bloomAnimationSpeed == 0) {
      frameNumber++;
      if (frameNumber >= numBloomFrames) {
        STATE = getNewState();
        faceNewDirection = true;
      };
    }
  }
  void playHelloAnimation() {
    image(hello[frameNumber], 0, 0, w, h);
    if (frameCount%helloAnimationSpeed == 0) {
      frameNumber++;
      if (frameNumber >= numHelloFrames) {
        STATE = getNewState();
        faceNewDirection = true;
      };
    }
  }
  void playKickAnimation() {
    image(kick[frameNumber], 0, 0, w, h);
    if (frameCount%kickAnimationSpeed == 0) {
      frameNumber++;
      if (frameNumber >= numKickFrames) {
        STATE = getNewState();
        faceNewDirection = true;
      };
    }
  }
  void playSplitAnimation() {
    image(split[frameNumber], 0, 0, w, h);
    if (frameCount%splitAnimationSpeed == 0) {
      frameNumber++;
      if (frameNumber >= numSplitFrames) {
        STATE = getNewState();
        faceNewDirection = true;
      };
    }
  }
  void playWalkAnimation() {
    image(walk[frameNumber], 0, 0, w, h);
    if (frameCount%walkAnimationSpeed == 0) {
      frameNumber++;
      if (frameNumber >= numWalkFrames) {
        STATE = getNewState();
        faceNewDirection = true;
      };
    }
  }
  int getNewState() {
    frameNumber = 0;
    float rand = random(1);
    float currentTotal = 0;
    float[] range = choices[STATE];
    for (int i = 0; i<range.length; i++) {
      // cycle through every range value
      currentTotal += range[i];
      if (rand < currentTotal) {
        return i;
      }
    }
    return 0;
  }
}
