Bubble[] b = new Bubble[25];

void setup() {
  size(640, 480);
  
  for (int i = 0; i < b.length; i++) {
    b[i] = new Bubble(i*5);
  }
}

void draw() {
  background(0);

  for (int i = 0; i < b.length; i++) {
    b[i].display();
    b[i].ascend();
    b[i].top();
  }
}