import ddf.minim.*;

Minim minim;
AudioInput mic;
float x;


void setup() {
  size(500, 500);
  background(150);
  minim = new Minim(this);
  mic = minim.getLineIn();

  frameRate(120);

  x = 1;
}

void draw() {


  stroke(abs(mic.left.get(0)*1000), 0, 255);
  line(x, height-20, x, (height-20)-abs(mic.left.get(0)*200));
  x = x+1;
  if (x >= width) {
    background(150);
    x = 0;
  }
}