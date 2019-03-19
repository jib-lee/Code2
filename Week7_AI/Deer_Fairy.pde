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
    { .3, .35, .1, .05, .15, .05}, //FIX THIS
    { .4, .15, .05, .05, .25, .1}, 
    { .15, .02, .45, .05, .03, .3 }, 
    { .1, .06, .04, .2, .4, .1}, 
    { .05, .27, .03, .05, .35, .25}, 
    { .02, .03, 0.1, .15, .01, 0.69}
  };
}
