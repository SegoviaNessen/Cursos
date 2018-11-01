void setup() {
  size(640, 480);
  //noCursor();
  noStroke();
}

void draw() {
  background(0);
}



void mouseMoved() {

  for (int i = 0; i < width; i += 100) {
    for (int j = 0; j < height; j += 100) {
      fill(random(255));
      
      rect(i, j, 100, 100);
    }
  }
}

