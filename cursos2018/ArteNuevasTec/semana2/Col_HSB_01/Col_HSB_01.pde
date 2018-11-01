void setup() {
  size(400, 400);
  colorMode(HSB, 360, 100, 100);
  noStroke();
}

void draw() {
  fill(map(mouseX, 0, width, 0, 360), 100, 100);
  rect(0, 0, width, height/2);
  fill(map(mouseX, 0, width, 360,0), 100, 100);
  rect(0, height/2,width,height/2);
}