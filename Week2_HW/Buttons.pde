void Buttons(){
  
//Buttons
  if (mouseX < 940 && mouseX > 860 && mouseY < 950 && mouseY > 870) {
    fill(85);
  } else {
    fill(25);
  }
  //left
  rect (860, 870, 80, 80);

  if (mouseX < 1040 && mouseX > 960 && mouseY < 950 && mouseY > 870) {
    fill(85);
  } else {
    fill(25);
  }
  //down
  rect (960, 870, 80, 80);

  if (mouseX < 1140 && mouseX > 1060 && mouseY < 950 && mouseY > 870) {
    fill(85);
  } else {
    fill(25);
  }
  //right
  rect (1060, 870, 80, 80);

  if (mouseX < 1040 && mouseX > 960 && mouseY < 850 && mouseY > 770) {
    fill(85);
  } else {
    fill(25);
  }
  //up
  rect (960, 770, 80, 80);

//Arrows
  stroke(245);
  strokeWeight(5);
  //left
  line (865, 910, 900, 875);
  line(865, 910, 900, 945);
  //right
  line (1135, 910, 1100, 875);
  line (1135, 910, 1100, 945);
  //down
  line(1000, 945, 965, 910);
  line(1000, 945, 1035, 910);
  //up
  line(1000, 775, 965, 810);
  line(1000, 775, 1035, 810);
}
