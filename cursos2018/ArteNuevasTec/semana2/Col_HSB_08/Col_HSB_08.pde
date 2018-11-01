void setup() {
  size(400, 400);
  background(0);
  colorMode(HSB, 360, 100, 100);
  noStroke();
}

void draw() {

  fill(map(mouseX, 0, width, 0, 360), 100,100);
  arc(width/2, height/2, 300, 300, map(pmouseX, 0, width, 0, TWO_PI), map(mouseX, 0, width, 0, TWO_PI));
}