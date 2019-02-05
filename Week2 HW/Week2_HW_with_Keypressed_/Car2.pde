void carTwo(float x, float y) {
rectMode(CENTER);
  noStroke();
  fill(100, 255, 205);
  rect(x, y, 80, 140);

  rect(x + 46,y - 25, 12, 7);
  rect(x- 46, y-25, 12, 7);
  
  fill(30);
  rect(x - 45, y -5, 10, 20);
  rect(x + 45, y -5, 10, 20);
  rect(x + 45, y + 50, 10, 20);
  rect(x - 45, y + 50, 10, 20);

  stroke(0);
  strokeWeight(1);
  fill(255, 230, 170);
  ellipse(x - 30, y -60, 10, 10);
  ellipse(x +30, y -60, 10, 10);
  
  
}
