void setup() {
  size(640, 480);
}

void draw() {
  background(0);
  noCursor();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    fill(255, 0, 0);
    rect(0, height/2, width, 20);
  }
  if (mouseButton == CENTER) {
    fill(0, 255, 0);
    rect(0, height/2, width, 20);
  }
  if (mouseButton == RIGHT) {
    fill(0, 0, 255);
    rect(0, height/2, width, 20);
  }
}

void mouseDragged() {
  background(random(255),random(255),random(255));
}

