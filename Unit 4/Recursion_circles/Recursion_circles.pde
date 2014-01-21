void setup() {
  size(410, 410);
  noFill();
  drawCircle(410,height/1.52);
}

void drawCircle(float x, float radius) {
  ellipse(x+10, height/2, radius-20, radius-20);
  if (radius > 20) {
    drawCircle(x-15.4, radius-8);
  }
}
