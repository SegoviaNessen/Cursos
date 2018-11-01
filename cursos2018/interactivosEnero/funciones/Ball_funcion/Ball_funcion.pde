// la bouncing ball en pequeños trozos de código

//es importante comprender que hace cada linea
//para poder establecer los pequeños pedazos enlos cuales
//podemos modular el programa


float x;
float y;


void setup() {
  size(720, 480);
}

void draw() {
  background(0);
  ballSpeed(0.3);
  ballDisplay(int(x), height/2);
  edges();
 
  ballDisplay(int(x)*2, height/3);

  println(x);
}
//se dibuja la pelota
void ballDisplay(int x, int y) {

  ellipse(x, y, 50, 50);
}
//la velocidad en que la pelota se mueve
void ballSpeed (float speed) {
  x += speed;
}
//encuentra el borde
void edges() {
  if (x >= width) {
    x = 0;
  }
}