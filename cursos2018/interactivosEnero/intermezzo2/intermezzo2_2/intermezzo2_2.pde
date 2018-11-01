import ddf.minim.*;

Minim minim;
AudioInput mic;



void setup() {
  size(500,500);
  
  minim = new Minim(this);
  mic = minim.getLineIn();

  frameRate(120);

  
}

void draw() {
  background(150);
  noFill();
  stroke(0, 0, 255);
  ellipse(width/2,height/2, mic.left.get(0) *1000,mic.left.get(0) *1000);
}