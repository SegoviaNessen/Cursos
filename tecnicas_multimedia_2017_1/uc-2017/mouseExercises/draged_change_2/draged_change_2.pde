void setup() {
  size(640, 480);
  noCursor();
  noStroke();
}

void draw() {
  background(0);
  
}



void mouseDragged() {
  fill(random(255),random(255),random(255));
  rect(0,0,width,height/2);
  fill(random(255),random(255),random(255));
  rect(0,height/2,width,height/2);
}

