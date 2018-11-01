Bubble[] b = new Bubble[3];

void setup() {
  size(640, 480);
  b[0] = new Bubble(30);
  b[1] = new Bubble(10);
  b[2] = new Bubble(10);
}

void draw() {
  background(0);
  b[0].display();
  b[0].ascend();
  b[0].top();

  b[1].display();
  b[1].ascend();
  b[1].top();

  b[2].display();
  b[2].ascend();
  b[2].top();
}