//Cancer Data Viewed in Anatomical Image

PImage anatomy;
Table cancerData;

void setup() {
  size(800, 800);
  anatomy = loadImage("Anatomy Outline.png");  

  cancerData = loadTable("Cancer Data 2019.csv", "header"); 
  println(cancerData.getRowCount() + " total rows in cancerData");

  TableRow tr = cancerData.findRow("Eye", 0);
  println( tr.getString("Estimated Deaths (Both Sexes)") );

  for (TableRow row : cancerData.rows()) {
    int EstimatedDeaths = row.getInt("Estimated Deaths (Both Sexes)");
    //  String whatever = row.getString("Estimated Deaths (Both Sexes)");
    //   String name = row.getString("Thyroid");  

    println(row.getString(0) + " has a deathRate of " + EstimatedDeaths );
  }
}

void draw() {
  background(255);
  imageMode(CENTER);
  image(anatomy, width/2, height/2);
}


//Pseudo Code for how each classes would work

//Particle class -> Generator class -> Cancer Position class -> Boundary class
/* 
 Particle class
 Particle (color, size)

 -------------------------------------------
 Generator class
 Generator (position,duration)
 
  *Numbers from Data goes here(?)*
 -------------------------------------------
 Cancer Position class
 extends Generator(to generate the partcie from the spot(?))
 CancerPosition (position)
 -------------------------------------------
 Boundary class
 extends CancerPosition
 Boundary (position, size)
 Check if clicked inside -> Generate Particles from CancerPosition
 */
