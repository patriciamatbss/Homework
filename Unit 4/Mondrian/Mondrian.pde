//float xRandom;
//float yRandom;
//
//void setup() {
//  size(500, 500);
//  strokeWeight(5);
//  xRandom= random(50, width-50);
//  yRandom= random(50, height-50);
//  drawRect(xRandom, yRandom);
//}
//
//void drawRect(float xRandom, float yRandom) {
//  fill(255, 255, 0);
//  rect(0, 0, xRandom, yRandom);
//  fill(255, 0, 0);
//  rect(xRandom, 0, width-xRandom, yRandom);
//  fill(0, 0, 255);
//  rect(0, yRandom, xRandom, height-yRandom);
//  fill(255, 255, 255);
//  rect(xRandom, yRandom, width-xRandom, height-yRandom);
//  if (xRandom>75) {
//    drawRect(xRandom,yRandom);
//  }
//}

void setup() {
  size(400, 500);
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 100);
  strokeWeight(5);
  stroke(0);
  drawRectangles(width, height);
}

// drawRectangles
// Purpose: Sub-divide a rectangle into four smaller rectangles
//
// Parameters:   rectangleWidth  the width of the rectangle to be sub-divided
//               rectangleHeight  the height of the rectangle to be sub-divided
void drawRectangles(float rectangleWidth, float rectangleHeight) {

  // get my random width and height
  float randomWidth = random(25, rectangleWidth - 25);
  float randomHeight = random(25, rectangleHeight - 25);

  // draw first rectangle
  fill(0, 0, 100); // white fill
  rect(0, 0, randomWidth, randomHeight);

  // draw second rectangle
  fill(0, 80, 90); // red fill
  rect(randomWidth, 0, rectangleWidth - randomWidth, randomHeight); 

  // draw third rectangle
  fill(240, 80, 90); // blue fill
  rect(0, randomHeight, randomWidth, rectangleHeight - randomHeight);

  // draw fourth rectangle
  fill(60, 80, 90); // yellow fill
  rect(randomWidth, randomHeight, rectangleWidth - randomWidth, rectangleHeight - randomHeight);

  if (randomWidth>25) {
    drawRectangles(randomWidth, randomHeight);
  }
}
