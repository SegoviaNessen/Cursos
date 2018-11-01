//pixelación

void setup() {
  PImage img = loadImage("JoanMiro-Azul.jpg");

  int resolution = 50;

  size(800, 600);
  int xInc = width/resolution; // incrementa en la direccion de x en pixeles
  int yInc = height/resolution; // incrementa en la direccion de y en pixeles
  for (int y=0; y<img.height; y+=yInc) {
    for (int x=0; x<img.width; x+=xInc) {
      fill(img.get(x, y));
      ellipse(x, y, xInc, yInc);
    }
  }
} // fin del setup()