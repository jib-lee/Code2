//make a grid
// ==> 2 dimensional array
//make a clickable cell in each grid

//==> class cell 
// will have a mine (true/false) or a number (0-4)
// when clicked, show ^^^
// boolean check if clicked
// if false ==> fill (color)
// if true ==> no fill //see the number under
// x,y,w,h

//mine is randomly placed in the cells
// for each cell, random if they have mine or not
//boolean have =Mine = true/false
//if clicked => show mine
// boolean show 0r not show
// show ==> cell is clicked
// cell have boundary check
// if have mine ==> show mine, else ==> make rect of another color

//check aroud to count mine
// iOffset = -1; iOffset < 1; iOffset++
//jOffset = -1; jOffset < 1; jOffset++
// int i = i + iOffset
// int j = j + jOffset
// if (is in the grid, i > -1 && i < total grid w)
// grid[i][j]
// if (haveMine == true)
// mineCount++
// show mine ==> lose
//ELSE
// show a number text saying the count if >0

// count == 0 is clicked
// check around and show all thats 0
// if around isnt shown yet && not a mine ==> show all 0

//Flag
//if right mouse click?
// fill with another color for flag
