int column;
void setup() {
  size(500, 500);
  column = 0;
}

void draw() {
  background(0);
  column = column+1;
  if (column >= height) {
    column = 0;
  }
  for (int x = 0; x < column; x = x+55) {
    for (int y = 0; y < column; y = y+15) {
      fill(map(x, 0, column, 0, 255),0,0, map(y, 0, column, 0, 255));
      ellipse(x, y, x, 50);
    }
  }
}