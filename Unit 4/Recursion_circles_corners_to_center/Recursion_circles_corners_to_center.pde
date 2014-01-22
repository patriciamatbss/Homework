void setup() {
  size(400, 400);
  fill(255);
  drawCircle1(0, 400, 25);
  drawCircle2(400, 0, 25);
  drawCircle3(0, 0, 25);
  drawCircle4(400, 400, 25);

}

void drawCircle1(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  if (x< height/2) {
    drawCircle1(x+25, y-25, radius+15);
  }
}
void drawCircle2(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  if (x> height/2) {
    drawCircle2(x-25, y+25, radius+15);
  }
}
void drawCircle3(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  if (x< height/2) {
    drawCircle3(x+25, y+25, radius+15);
  }
}
void drawCircle4(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  if (x>height/2) {
    drawCircle4(x-25, y-25, radius+15);
  }
}
