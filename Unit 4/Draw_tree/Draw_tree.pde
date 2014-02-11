float endOfBase= random(75, 200);
void setup() {
  size(700, 700);
  translate(width/2, height);
  strokeWeight(20);
  rotate(radians(-90));
  drawTree(10,-5);// with 3 generations of base, left branch right branch
}

void drawTree(int depth, int strokeWeight) {
  if (depth>0) {
    //draw base
    line(0, 0, endOfBase, 0);
    //draw left branch
    //move to end of base
    translate(endOfBase, 0);
    pushMatrix();
    rotate(radians(random(-30, -270)));
    line(0, 0, endOfBase, 0);
    translate(endOfBase, 0);
    scale(0.5, 0.5);
    drawTree(depth-1, strokeWeight-5);
    popMatrix();

    //draw right branch
    //move to end of base
    pushMatrix();
    rotate(radians(random(20, 50)));
    line(0, 0, endOfBase, 0);
    translate(endOfBase, 0);
    scale(0.5, 0.5);
    drawTree(depth-1, strokeWeight-5);
    popMatrix();
  }
}
