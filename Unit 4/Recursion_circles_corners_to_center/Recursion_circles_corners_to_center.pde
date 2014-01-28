void setup() {
  size(400, 400);
  fill(255);
  drawCircle(0, 400, 25, 25, -25);
  drawCircle(400, 0, 25, -25, 25);
  drawCircle(0, 0, 25, 25, 25);
  drawCircle(400, 400, 25, -25, -25);
}

void drawCircle(float x, float y, float radius, int xDif, int yDif) {
  ellipse(x, y, radius, radius);
  if (x < height/2) {
    drawCircle(x+xDif, y+yDif, radius+15, xDif, yDif);
  }
  if (x > height/2) {
    drawCircle(x+xDif, y+yDif, radius+15, xDif, yDif);
  }
}
