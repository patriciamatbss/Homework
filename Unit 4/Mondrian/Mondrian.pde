void setup() {
  strokeWeight(5);
  size(300, 300);
  drawRect();
}

void drawRect() {
  fill(255, 255, 0);
  rect(0, 0, 200, 175);
  fill(255, 0, 0);
  rect(200, 0, 100, 175);
  fill(0, 0, 255);
  rect(0, 175, 200, 125);
  fill(255, 255, 255);
  rect(200, 175, 100, 125);
}
