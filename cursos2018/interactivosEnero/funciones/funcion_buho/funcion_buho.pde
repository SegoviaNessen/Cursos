//la función y el buho

void setup() {
  size(480, 120);
  smooth();
}

void draw() {
  background(204);
  buho(110, 100);
  buho(180, 110);
}

void buho(int x, int y) {
  pushMatrix();
  translate(x,y);
  stroke(0);
  strokeWeight(70);
  line(0,-35,0,-65);//cuerpo
  noStroke();
  fill(255);
  ellipse(-17.5,-65,35,35);//ojo izquierdo back
  ellipse(17.5,-65,35,35);//ojo derecho back
  arc(0,-65,70,70,0,PI);//Mandíbula
  fill(0);
  ellipse(-14,-65,8,8);//ojo izquierdo 
  ellipse(14,-65,8,8);//ojo derecho
  quad(0,-58,4,-51,0,-44,-4,-51);//piquito
  popMatrix();
}