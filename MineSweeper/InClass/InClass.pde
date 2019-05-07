int numCols = 10;
int numRows = 10;
int cellW, cellH;

int[][] mineField = new int[numCols][numRows];

/*
int[][] mineField = {
 {1, 9, 1}, 
 {1, 2, 2}, 
 {0, 1, 9}, 
 {0, 1, 1}, 
 };
 */
boolean [][] isRevealed = new boolean [numCols][numRows];

void setup() {
  size(300, 300);
  cellW = width/numRows;
  cellH = height/numCols;

  setupMineField(15);
}

void draw() {
  background(210, 150, 250);
  drawCells();
}

void drawCells() {
  for (int x = 0; x < numRows; x++) {
    for (int y = 0; y < numCols; y++) {
      if (isRevealed [y][x]) {
        if (mineField[y][x] >= 9) {
          fill(255, 0, 0);
          rect(x * cellW, y * cellH, cellW, cellH);
        } else if (mineField[y][x] != 0) {
          fill(255);
          rect(x * cellW, y * cellH, cellW, cellH);
          fill(0);
          //give number of this position
          text( mineField[y][x], x * cellW + cellW/2, y * cellH + cellH/2);
        }
      } else {
        fill(100, 190, 205);
        rect(x * cellW, y * cellH, cellW, cellH);
      }
    }
  }
}

void mousePressed() {
  //if one square is clicked
  int gridX = int(map(mouseX, 0, width, 0, numRows));
  int gridY = mouseY/cellH;
  //reveal that square
  isRevealed[gridY][gridX] = true;
  checkOpenSquaresAround(gridY, gridX);
}

void checkOpenSquaresAround(int y, int x) {
  if (mineField[y][x] == 0) {
    //if reveal a zero,
    //open arounds this cell
    openCell (y - 1, x);
    openCell (y - 1, x + 1);
    openCell (y, x + 1);
    openCell (y + 1, x + 1);
    openCell (y + 1, x);
    openCell (y + 1, x - 1);
    openCell (y, x - 1);
    openCell (y - 1, x - 1);
  }
}

void openCell(int y, int x) {
  if (y < 0|| y >= numCols || x < 0 || x >= numRows)return;
  if (!isRevealed [y][x]) {
    isRevealed[y][x] = true;
    checkOpenSquaresAround(y, x);
  }
}

void setupMineField(int numMines) {
  int[][] minePositions = new int [numMines][2];
  for (int i = 0; i < numMines; i++) {
    int[] pos = {int(random(numRows)), int(random(numCols))};
    minePositions[i] = pos;
  }

  for (int i = 0; i < numMines; i++) {
    //put mine into mineField
    int y = minePositions[i][1];
    int x = minePositions[i][0];
    mineField[y][x] = 9;
    //mineField[minePositions[i][0]][minePositions[i][1]] = 9;
    //assign numbers based on mine positions
    addOneToCell (y - 1, x);
    addOneToCell (y - 1, x + 1);
    addOneToCell (y, x + 1);
    addOneToCell (y + 1, x + 1);
    addOneToCell (y + 1, x);
    addOneToCell (y + 1, x - 1);
    addOneToCell (y, x - 1);
    addOneToCell (y - 1, x - 1);
  }

  for (int x = 0; x < numRows; x++) {
    for (int y = 0; y < numCols; y++) {
    }
  }
}

void addOneToCell(int y, int x) {
  if (y < 0|| y >= numCols || x < 0 || x >= numRows)return;
  mineField[y][x] ++;
  //if (y >= 0 && y < numCols && x >= 0 && x < numRows) {
  //  mineField[y][x] ++;
  //}
}
