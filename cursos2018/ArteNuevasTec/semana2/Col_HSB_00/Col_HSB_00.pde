void setup() {
  size(200,200);
  colorMode(HSB,360,100,100);
  noStroke();
}

void draw() {
  fill(map(mouseX,0,width,0,360),100,100);
  rect(0,0,width,height);
}