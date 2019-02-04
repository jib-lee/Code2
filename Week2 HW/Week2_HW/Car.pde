void car(float x, float y) {
  noStroke();
  fill(255, 150, 195);
  rect(x, y, 80, 140);

  rect(x+80, y+28, 12, 7);
  rect(x-12, y+28, 12, 7);

  stroke(0);
  strokeWeight(1);
  fill(255, 230, 170);
  ellipse(x +10, y + 10, 10, 10);
  ellipse(x +70, y + 10, 10, 10);
  
  
}
