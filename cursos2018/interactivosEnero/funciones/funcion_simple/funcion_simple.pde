//un uso simple de una función
void setup() {
  size(500,500);
  smooth();
}

void draw() {
  innerCircle(width/2,height/2);
  innerCircle(width/4,height/2);
  innerCircle(width/16,height/2);
}

void innerCircle(int x, int y) {
  int diameter = 200;

  ellipse(x,y, diameter, diameter);
  ellipse(x,y, diameter/2, diameter/2);
  ellipse(x,y, diameter/4, diameter/4);
  ellipse(x,y, diameter/16, diameter/16);
}