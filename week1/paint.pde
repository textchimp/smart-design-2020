
// This is now a GLOBAL variable:
// It can be seen and changed inside any function
int counter = 0;


// This function runs ONCE at the start of the sketch
void setup(){

  //fullScreen();
  size( 1200, 900 );
  background( 0 );

  noStroke(); // Turn off outline drawing for this whole program

  // Change the colour mode so that the 3 arguments we give to
  // colour functions like fill() refer to hue, saturation and
  // brightness (instead of red, green and blue components)
  // (The main reason for doing this is so we can smoothly cycle
  // through colours by just incrementing the hue value alone.)
  colorMode( HSB );

  // GOTCHA! If you try to declare this variable here, you will
  // not be able to use it inside any other function, such as
  // the draw() function where we actually need it!
  // This is because of "scope" (visibility) rules - variables
  // cannot be "seen" outside of the function they are declared in.
  // We actually need to declare this variable at the top of the
  // file, outside of any function.
  // int counter = 0;


} // setup()



// This function runs ALL THE TIME, ideally 60 times/sec
void draw(){

   // background( 0 );  // Clear the screen before each draw

  // delay( 100 );  // Pause for 100 ms; slows down the drawing

  //
  // If counter gets too large, reset it back to zero
  if( counter > 255 ){
    counter = 0;
  }

  fill(
    counter,  // Hue
    255,      // Saturation
    255,      // Brightness
    100       // opacity
  );

  // Increment (add 1 to) the contents of the counter variable
  counter = counter + 1;   // counter++;

  // println( counter );  // "If in doubt, log it out"


  // // Screensaver code! Draw a randomly-sized circle at a random
  // // position on the screen
  //
  // float circleSize = random(50, 600);  // save random num into var
  //
  // ellipse(
  //   random(width),  // random x position
  //   random(height), // random y position
  //   circleSize,     // Same random number for both width and height,
  //   circleSize      // ensuring we always get a perfect circle
  // );


  // Get the mouse X speed, and use it to set the circle size
  float mouseXSpeed = mouseX - pmouseX;

  // Draw a circle wherever the mouse currently is.
  // The size of the circle will depend on the speed of the mouse
  // movement, i.e. how far it has moved since the last draw()
  // (we have "mapped" the mouse speed to the circle size)
  ellipse( mouseX, mouseY,  mouseXSpeed, mouseXSpeed  );

} // draw()
