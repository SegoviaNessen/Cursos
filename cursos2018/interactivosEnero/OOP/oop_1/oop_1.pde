Bubble b;

void setup() {
  size(640,480);
  b = new Bubble();
}

void draw() {
  background(0);
  b.display();
  b.ascend();
}