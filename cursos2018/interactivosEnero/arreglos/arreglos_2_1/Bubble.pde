class Bubble {

  float x;
  float y;
  float diameter;
  Bubble(float tempD) {
    x = random(width);
    y = height;
    diameter = tempD;
  }

  void ascend() {
    y--;
    x = x+random(-3, 3);
  }

  void display() {
    stroke(0);
    fill(127);
    ellipse(x, y, diameter, diameter);
  }

  void top() {
    if (y <= 0) {
      y = width;
    }
  }
}