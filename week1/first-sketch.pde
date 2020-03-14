
// This is a comment. Comments start with '//' and are
// ignored by Processing.
// They are for writing useful notes to yourself or
// other people about what your code is doing.
// Comments are your friend! Write lots of comments.

size( 1200, 900 );  // set the width and height of the canvas (drawing area)
//fullScreen();

background( 0 ); // Set the background colour to black


println( "Hello world!" );  // Run the println function

println( "Hi again." );

// Create a new variable to store the result of a calculation
int pressureSensorReading = 300 * 20 + 6;

pressureSensorReading = pressureSensorReading + 10;   // add 10 to the variable

// print out the contents of the variable, starting with a label to make it clearer
println( "pressureSensorReading: ", pressureSensorReading );

//rect( 20, 20, 30, 50 ); // x pos, y pos, w, h

//     R,   G, B
fill(  0, 255, 0 ); // the colour to use for filled-in shapes

// Draw a rectangle at a certain position, with a certain size
rect(
  100, // x position (horizontal)
  150, // y position (vertical)
  300, // width
  300  // height
);

fill( 255, 0, 0 ); // this colour will be used for the circle

// Draw a circle in the exact middle of the canvas, with a size of 300 by 300
// (Note that the variables 'width' and 'height' are provided to us by
// Processing; they contain the canvas size numbers we set using
// the size(1200, 900) function at the top of the file - but using these
// variables saves us from having to type the exact numbers 1200 and
// 900 everywhere.)
ellipse( width/2 , height/2,  300, 300 );



stroke( 0, 0, 255 );  // colour to use for outlines

// Draw a line from the top left corner of the canvas to the bottom right
line( 0,0,  width, height );
