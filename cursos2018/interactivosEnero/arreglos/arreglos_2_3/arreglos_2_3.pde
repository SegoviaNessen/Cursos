Bubble[] b = new Bubble[100];

void setup() {
  size(640, 480);
  background(0);
  for (int i = 0; i < b.length; i++) {
    b[i] = new Bubble(random(50)-1);
  }
}

void draw() {
  
  fill(0,10);
  noStroke();
  rect(0,0,width,height);
  for (int i = 0; i < b.length; i++) {
    b[i].display();
    b[i].ascend();
    b[i].top();
  }
}