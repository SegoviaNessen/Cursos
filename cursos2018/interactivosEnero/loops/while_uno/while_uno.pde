float x = 0;

void setup() {
  size(500, 500);
}


void draw() {
  background(0);
  // como trabajamos en el contador
   /*x = x+1;
   fill(101);
   stroke(255);
   ellipse(x, width/2, 20, 20);*/
  // trabajando con while 1
  /*x = x+1;
  while (x < width) {

    fill(101);
    stroke(255);
    ellipse(x, width/2, 20, 20);
  }*/
    // trabajando con while 2
  x = 0;
  while (x < 400) {
    x = x +100;
    fill(map(x,100,400, 100,255));
    stroke(255);
    ellipse(x, width/2, 20, 20);
  }
}