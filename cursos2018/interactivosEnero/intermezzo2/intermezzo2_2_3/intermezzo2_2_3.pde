import ddf.minim.*;

Minim minim;
AudioInput mic;

void setup() {
  size(640, 480);
  smooth();

  minim  = new Minim(this);

  mic = minim.getLineIn();

  background(0);
}

void draw() {
  fill(0, 16);
  noStroke();
  rect(0, 0, width, height/2);

  stroke(255);
  noFill();

  float r = 0;
  for (int i = 0; i < mic.bufferSize(); i++) {
    r += abs(mic.left.get(i))*20;
  }
  ellipse(width/2, height/2, r, r);
}

void stop() {
  mic.close();
  minim.stop();
  super.stop();
}