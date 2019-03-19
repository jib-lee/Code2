class Deer {
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
    { .3, .35, .1, .05, .15, .05},
    { .4, .15, .05, .05, .25, .1}, 
    { .15, .02, .45, .05, .03, .3 }, 
    { .1, .06, .04, .2, .4, .1}, 
    { .05, .27, .03, .05, .35, .25}, 
    { .02, .03, 0.1, .15, .01, 0.69}
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
  
  Deer() {
    velo = new PVector(0, 0);
    pos = new PVector(random(width), random(height/2,height));
 
    //LOAD THE IMAGES
  }
}
