float x = 0;

void setup() {
  size(500, 500);
}


void draw() {
  background(0);
  // trabajar con el mouse

  //observemos la capacidad de 
  //anidar los bloques
  x = 0;
  while (x < width) {
    if (mouseX < 1) {
      x = x+1;
    } else {
      x = x+mouseX;
    }
    
    fill(101);
    stroke(255);
    ellipse(x, width/2, x+2, x+2);
  }
}