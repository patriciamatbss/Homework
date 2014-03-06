// Contains the starting, or intial, word (axiom)
String axiom = "F+F+F+F+F+F";

// Contains the existing word
String existingWord = "";

// Contains the new (re-written) word
String newWord = "";

// Tracks how many times existing word has been re-written
int rewriteCount = 0;

// Will contain all the rules that apply for this L-system
StringDict rules; 

//place turttle
float initalX = 300;

float initalY = 400;

//state how long line will be
float lineLength = 300;

// state how long line is after reduction
float currentLength = 0;

// state angle to turn by
float angle = 60;

int base = 6;

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

  // Slow down the refresh rate
  frameRate(1);

  // Create the string dictionary object
  // "Using the StringDict class, create a new StringDict object, named 'rules' "
  rules = new StringDict();

  // Add rules (key-value pairs)
  //         key     value
  rules.set("F", "F--F+F+F+F+F--F");

  // For the first re-write, the existing word is set to the axiom
  existingWord = axiom;
  rewriteCount = 1;

  rewriteWord();
}

void draw() {
}

// This function runs repeatedly ( unless we stop it with noLoop() )
void rewriteWord() {
  //clean canvas
  background(255, 255, 255);

  // Print what generation of replacement this is
  text("Have re-written word this many times: " + rewriteCount, 0, 550);
  for (int currentCharacter = 0; currentCharacter < existingWord.length(); currentCharacter++) {

    // Print text to the screen
    // Arguments:
    //   string, x, y

    // Check each character - if it matches a rule, replace it
    if ( existingWord.charAt(currentCharacter) == 'F') {
      // replace
      newWord += rules.get("F");
      fill(255, 0, 0); 
      fill(0, 0, 0);
    } 
    else {
      // copy the character directly
      newWord += existingWord.charAt(currentCharacter);
    }
  }
}


// Responds to key presses
void keyPressed() {

  // When the right arrow key is pressed, do another round of replacement
  if (key == CODED) {
    if (keyCode == RIGHT) {

      // New word from last time becomes existing word for this round of replacement
      existingWord = newWord;

      // Need to reset these variables to get ready for another round of replacement 
      newWord = "";
      rewriteCount += 1;

      rewriteWord();
    }
  }
  
  //if the user presses the d key draw new word
  if (key == 'd') {
    turttleDraw();
  }
}

void turttleDraw() {
  //println("TURTTLE DRAW");
  currentLength = lineLength/pow(base,rewriteCount);
  translate(initalX,initalY);
  for (int currentCharacter = 0; currentCharacter < newWord.length(); currentCharacter++) {

    // Print text to the screen
    // Arguments:
    //   string, x, y

    // Check each character - if it matches a rule, replace it
    if ( newWord.charAt(currentCharacter) == 'F') {
      line(0, 0, currentLength, 0);
      translate(currentLength,0);
    } 
    else if (newWord.charAt(currentCharacter) == '+') {
      rotate(radians(-1*angle));
    }
    else if (newWord.charAt(currentCharacter) == '-') {
      rotate(radians(angle));
    }
  }
}
