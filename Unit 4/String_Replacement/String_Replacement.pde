// Contains the starting, or intial, word (axiom)
String axiom = "F+F";

String word = "";

// Will contain all the rules that apply for this L-system
StringDict rules; 

// This function runs once.
void setup() {
  
  // Create the canvas
  size(800, 600);
  
  // White background
  background(255, 255, 255);
  
  // Black text
  fill(0, 0, 0);
  
  // Set text size
  textSize(24);
  
  //slow down the refresh rate
  frameRate(1);
  
}

// This function runs repeatedly ( unless we stop it with noLoop() )
void draw() {
 
 // Re-paint the background
 background(255); //white

 // Print text to the screen
 // Arguments:
 //   string, x, y
 text("The axiom is: " + axiom, 0, 100);
  
 // show what frame is being displayed
 text("Current frame is:" + frameCount, 0, 200);
 
 // Take each character from the axiom and copy it to the new word 
 word += axiom.charAt(frameCount - 1);
 
 // Pring the new word
 text("Current word is:" + word, 0, 300);
  
 //Stop before we go out of bounds... past the end of the string
 if (frameCount == axiom.length() ) {
   noLoop();
 }
}
