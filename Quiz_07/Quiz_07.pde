PVector pos, vel, acc;
float s = 70;
PVector gravity = new PVector(0,0.5);
boolean over, caughtBall;
PVector offset = new PVector (0.0,0.0);

void setup(){
 size (900,900); 
 
 pos = new PVector(width/2, height/2);
 vel = new PVector(2, 0);
 acc = new PVector(0, 0.2);
}

void draw () {
  background (170,200,255);
  noStroke();
  fill(250,130,180);
  ellipse (pos.x,pos.y,s,s);
  pos.add(vel);
  vel.add (gravity);
  vel.add(acc);
  
  if (pos.x > width-s/2 || pos.x < s/2){
   vel.x = -vel.x;
  }
  if (pos.y > height - s/2){
   vel.y = -vel.y; 
  }
  
  if (dist(mouseX, mouseY, pos.x,pos.y) < s/2){
   over = true; 
  } else {
   over = false; 
  }
}

void mousePressed(){
  if (over){
    caughtBall = true;
  } else {
   caughtBall = false; 
  }
  offset.x = mouseX - pos.x;
  offset.y = mouseY - pos.y;
}

void mouseDragged(){
 if (caughtBall) {
  pos.x = mouseX - offset.x;
  pos.y = mouseY - offset.y;
 }
}

void mouseReleased(){
 caughtBall = false; 
}
