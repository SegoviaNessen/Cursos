float x = 0;
float x1 = 0;
float y = 0;
float distXY = 20;

float circle;
float circle1;


float colum;
float row;

void setup() {
  size(500, 500);
  colum = 0;
  row = 0;
  circle = 0;
  circle1 = 0;
}


void draw() {
  background(0);
  colum = colum+1;
  if (colum >= width/2) {
    circle = circle+1;
  }
  if (circle >= width) {
    row = row +1;
  }
  if (row >= height) {
    colum = 0;
    row = 0;
    circle = 0;
    circle1 = 0;
  }
  if (key == 'e') {
    circle1 = circle1 +1;
  }
  if (key == 'k') {
    circle1 = 0;
  }
  x = 0; 
  while (x < circle) {
    stroke(255);
    strokeWeight(2);
    ellipse(x, width/2, 20, 20);

    x = x+distXY;
  }

  x1 = 0; 
  while (x1 < circle1) {
    stroke(255);
    strokeWeight(2);
    ellipse(x1, width/3, 20, 20);

    x1 = x1+distXY;
  }


  y = 0;
  while (y < row) {
    stroke(255, 0, 0);
    line(0, y, width, y);
    y = y+distXY;
  }
}

void keyPressed() {
  if (key == 'r') {
    colum = 0;
    row = 0;
    circle = 0;
    circle1 = 0;
  }
}

void mousePressed() {
  fill(0, 255, 0);
}
void mouseReleased() {
  fill(255);
}