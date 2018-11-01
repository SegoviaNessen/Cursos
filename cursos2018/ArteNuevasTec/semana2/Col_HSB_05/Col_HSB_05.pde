void setup() {
  size(400, 400);
  colorMode(HSB, 360, 100, 100);
  noStroke();
}

void draw() {
  fill(map(mouseX,0,width,0,360), map(mouseX,0,height,0,100),map(mouseX,0,width,0,100));
  ellipse(mouseX, height/2, 50,50);
}