float x = 0;
float y = 0;

void setup() {
  size(500, 500);
}


void draw() {
  background(0);
  // hacer una reticula
  x = 50; 
  while (x < width) {
    stroke(255);
    strokeWeight(2);
    line(x, 0, x, height);
    x = x+50;
  }
  y = 50; 
  while (y < height) {
    stroke(255);
    strokeWeight(2);
    line(0, y, width, y );
    y = y+50;
  }
}