
ArrayList<CircBound> circBound;
ArrayList<CircBound> circ = new ArrayList<CircBound>();
int numBounds = 27;
//0 -4000
float emitOne= 3;
//4000 - 15000
float emitTwo = 1;
//15000 - 30000
float emitThree = 0.75;
// 30000 < ...
float emitFour = 0.45;

//make green as constant
int g = color (0, 255, 0);

int boundRadius = 25;
int  particleRadius = 70;
int maxData = 51020;


PImage anatomy;
Table cancerData;

void setup() {
  size(800, 800);

  rectMode(CENTER);

  size(800, 800);
  anatomy = loadImage("Anatomy Outline.png");  

  cancerData = loadTable("Cancer Data 2019.csv", "header"); 
  println(cancerData.getRowCount() + " total rows in cancerData");

  TableRow tr = cancerData.findRow("Eye", 0);
  println( tr.getString("Estimated Deaths (Both Sexes)") );

  for (TableRow row : cancerData.rows()) {
    int EstimatedDeaths = row.getInt("Estimated Deaths (Both Sexes)");
    int xpos = row.getInt("XPos");
    int ypos = row.getInt("YPos");
    float Emit = row.getFloat("Emit");
    circ.add(new CircBound (xpos, ypos, boundRadius, particleRadius, color(map(EstimatedDeaths, 0, maxData, 0, 255), g, map(EstimatedDeaths, 0, maxData, 255, 0)), Emit));


    println(row.getString(0) + " has a deathRate of " + EstimatedDeaths );
    
  }
}

void draw() {
  noFill();
  noStroke();
  ellipse(width/2, height/2, 200, 200);

  background(255);
  imageMode(CENTER);
  image(anatomy, width/2, height/2);

for(CircBound c : circ) {
  c.display();

 }
}

//boundary check
void mousePressed() {
for(CircBound c : circ){
  c.hitDetect();

}
  //println(mouseX, mouseY);
}
