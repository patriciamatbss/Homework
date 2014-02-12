float endOfBase= random(100, 200);
void setup() {
  size(700, 700);
  translate(width/2, height);
  scale(0.3, 0.3);
  rotate(radians(-90));
  drawTree(6, 75, endOfBase);// with 3 generations of base, left branch right branch
}

void drawTree(int depth, int thicknes, float endOfBase) {

  if (depth>0) {
    if (depth>5) {
      //draw original base
      strokeWeight(100);
      stroke(139, 119, 101);
      line(0, 0, 800, 0);
      translate(800, 0);
    }
    //draw base
    pushMatrix();
    strokeWeight(thicknes);
    //stroke(225, 0, 0);
    stroke(139, 119, 101);
    line(0, 0, endOfBase, 0);
    popMatrix();

    //draw left branch
    //move to end of base
    translate(endOfBase, 0);
    pushMatrix();
    rotate(radians(random(-30, -270)));
    strokeWeight(thicknes);
    //stroke(0, 255, 0);
    stroke(139, 119, 101);
    strokeWeight(thicknes);
    line(0, 0, endOfBase, 0);
    translate(endOfBase, 0);
    drawTree(depth-1, thicknes-10, endOfBase-10);
    popMatrix();

    //draw right branch
    //move to end of base
    pushMatrix();
    rotate(radians(random(20, 50)));
    //stroke(0, 0, 255);
    stroke(139, 119, 101);
    strokeWeight(thicknes);
    line(0, 0, endOfBase, 0);
    translate(endOfBase, 0);
    drawTree(depth-1, thicknes-10, endOfBase-12);
    popMatrix();
  }
}
