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
    x = x+random(-10, 10);
  }

  void display() {
    //noStroke();
    stroke(255,0,0,3);
    fill(127,5);
    ellipse(x, y, diameter, diameter);
  }

  void top() {
    if (y <= 0) {
      y = width;
    }
  }
}