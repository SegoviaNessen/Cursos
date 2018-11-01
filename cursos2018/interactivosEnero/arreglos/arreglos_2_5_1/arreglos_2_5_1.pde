Bubble[] b = new Bubble[2500];
int total = 0;

void setup() {
  size(640, 480);

  for (int i = 0; i < b.length; i++) {
    b[i] = new Bubble(random(10, 50));
  }
}


void draw() {
  background(0);

  for (int i = 0; i < total; i++) {
    b[i].display();
    b[i].ascend();
    b[i].top();
  }
}

/*void mousePressed() {
 if (mouseButton==RIGHT) {
 total = total+1;
 } else {
 total = total-1;
 }
 }*/

void mouseDragged() {
  total = total+1;
}
void mouseReleased() {
  total = 0;
}