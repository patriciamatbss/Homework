float endOfBase= random(100, 200);
int leafWidth= 15;
int leafHeight= 30;
void setup() {
  size(700, 700);
  background(225, 225, 225);
  translate(width/2, height);
  scale(0.2, 0.2);
  rotate(radians(-90));
  drawTree(5, 55, endOfBase, leafHeight, leafWidth);// with 3 generations of base, left branch right branch
}

void drawTree(int depth, int thicknes, float endOfBase, int leafHeight, int leafWidth) {

  if (depth>0) {

    if (depth>4) {
      //draw original base
      strokeWeight(100);
      stroke(139, 119, 101);
      line(0, 0, 800, 0);
      translate(800, 0);
    }

    if (depth<5) {
      //draw base
      pushMatrix();
      strokeWeight(thicknes);
      //stroke(225, 0, 0);
      stroke(139, 119, 101);
      line(0, 0, endOfBase, 0);
      if (depth<2) {
        noStroke();
        fill(0, 255, 0);
        ellipse(endOfBase+25, 0, 50, 25);
      }
      if (depth<4) {
        noStroke();
        fill(0, 255, 0);
        ellipse(0-endOfBase+25, 0, 50, 25);
      }
      popMatrix();
      translate(endOfBase, 0);
    }

    //draw left branch
    //move to end of base
    pushMatrix();
    rotate(radians(random(-30, -270)));
    strokeWeight(thicknes);
    //stroke(0, 255, 0);
    stroke(139, 119, 101);
    strokeWeight(thicknes);
    line(0, 0, endOfBase, 0);
    if (depth<2) {
      noStroke();
      fill(0, 255, 0);
      ellipse(endOfBase+25, 0, 50, 25);
    }
    translate(endOfBase, 0);
    drawTree(depth-1, thicknes-10, endOfBase-10, leafHeight+30, leafWidth+30);
    popMatrix();

    //    //draw middle branch
    //    if (depth<5) {
    //      noStroke();
    //      fill(0, 255, 0);
    //      ellipse(endOfBase+25, 0, 50, 25);
    //    }
    //    pushMatrix();
    //    strokeWeight(thicknes);
    //    //stroke(0, 255, 0);
    //    stroke(139, 119, 101);
    //    strokeWeight(thicknes);
    //    line(0, 0, endOfBase, 0);
    //    if (depth<2) {
    //      noStroke();
    //      fill(0, 255, 0);
    //      ellipse(endOfBase+25, 0, 50, 25);
    //    }
    //    translate(endOfBase, 0);
    //    drawTree(depth-1, thicknes-10, endOfBase-10, leafHeight+30, leafWidth+30);
    //    popMatrix();

    //draw right branch
    //move to end of base
    pushMatrix();
    rotate(radians(random(20, 50)));
    //stroke(0, 0, 255);
    stroke(139, 119, 101);
    strokeWeight(thicknes);
    line(0, 0, endOfBase, 0);
    if (depth<2) {
      noStroke();
      fill(0, 255, 0);
      ellipse(endOfBase+25, 0, 50, 25);
    }
    translate(endOfBase, 0);
    drawTree(depth-1, thicknes-10, endOfBase-12, leafHeight+30, leafWidth+30);
    popMatrix();
  }
}
