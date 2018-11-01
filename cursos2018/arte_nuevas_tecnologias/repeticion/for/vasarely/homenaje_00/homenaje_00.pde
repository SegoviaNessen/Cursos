float x = 0;

void setup() {
  size(447, 423);
  strokeCap(SQUARE);
}

void draw() {
  background(0);
  x++;
  cuad(0, width, 50, 0, height, x+3, x);
  cuad(30, width-30, 80, 30, height-30, x+6, X);
  cuad(60, width-60, 110, 60, height-60, x+9, X);
  cuad(90, width-90, 140, 90, height-90, x+11, x);
  cuad(120, width-120, 170, 120, height-120, x+14, x);
  cuad(150, width-150, 200, 150, height-150, x+17, x);
  if (x >= 50) {
    x = 0;
  }
}

void cuad(float init, float finish, float step, float y, float h, float sWw, float sWb) {

  for (float i = init; i < finish; i +=step) {

    strokeWeight(sWw);
    stroke(255);
    line(i, y, i, h);
  }
  for (float j = init+sWw; j < finish-sWw; j +=step-init) {

    strokeWeight(sWb);
    stroke(0);
    line(j, y, j, h);
  }
}

