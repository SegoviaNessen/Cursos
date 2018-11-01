void setup() {
  size(400, 400);
  colorMode(HSB, 360, 100, 100);
  noStroke();
}

void draw() {
  fill(225, 100,map(mouseX,0,width,0,100));
  rect(0, 0, width, height);
}