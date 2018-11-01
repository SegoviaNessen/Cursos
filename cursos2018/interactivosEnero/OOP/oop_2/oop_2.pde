Bubble b, b1;

void setup() {
  size(640, 480);
  b = new Bubble(30, 30);
  b1 = new Bubble(100, 200);
}

void draw() {
  background(0);
  b.display();
  b.ascend();

  b1.display();
  b1.ascend();
}