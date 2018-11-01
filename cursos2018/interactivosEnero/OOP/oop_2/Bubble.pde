class Bubble {

  float x;
  float y;
  float diameter;
  Bubble( float tempX,float tempD) {
    x = tempX;
    y = height;
    diameter = tempD;
  }

  void ascend() {
    y--;
    x = x+random(-2,2);
  }

  void display() {
    stroke(0);
    fill(127);
    ellipse(x, y, diameter, diameter);
  }
}