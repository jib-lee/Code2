void car(float x, float y) {
  noStroke();
  fill(255, 150, 195);
  rect(x, y, 80, 140);

  rect(x+80, y+28, 12, 7);
  rect(x-12, y+28, 12, 7);

  fill(30);
  rect(x - 10, y + 100, 10, 20);
  rect(x + 80, y + 100, 10, 20);
  rect(x - 10, y + 38, 10, 20);
  rect(x + 80, y + 38, 10, 20);

  stroke(0);
  strokeWeight(1);
  fill(255, 230, 170);
  ellipse(x +10, y + 10, 10, 10);
  ellipse(x +70, y + 10, 10, 10);
}
