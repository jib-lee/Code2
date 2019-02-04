void carTwo(float x, float y) {
rectMode(CENTER);
  noStroke();
  fill(255, 0, 0);
  rect(x, y, 80, 140);

  rect(x + 46,y - 25, 12, 7);
  rect(x- 46, y-25, 12, 7);

  stroke(0);
  strokeWeight(1);
  fill(255, 230, 170);
  ellipse(x - 30, y -60, 10, 10);
  ellipse(x +30, y -60, 10, 10);
  
  
}
