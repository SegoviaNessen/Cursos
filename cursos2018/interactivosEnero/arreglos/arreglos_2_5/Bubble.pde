class Bubble {

  float x;
  float y;
  float diameter;
  float ySpeed;
  Bubble(float tempD) {
    x = random(width);
    y = height;
    ySpeed = random(0.25,2.5);
    diameter = tempD;
    
  }

  void ascend() {
    y = y - ySpeed;
    x = x+random(-2, 2);
  }

  void display() {
    noStroke();
    //stroke(255,0,0,10);
    fill(random(255),0,0,125);
    ellipse(x, y, diameter, diameter);
  }

  void top() {
    if (y <= 0) {
      y = width;
    }
  }
}