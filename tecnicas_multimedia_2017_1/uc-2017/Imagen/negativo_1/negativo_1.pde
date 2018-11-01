//Negativo

void setup() {
  PImage img = loadImage("Papa-Zócalo.jpg");
  size(600, 338);
  image(img, 0, 0);
  for (int y = 0; y < img.height; y++) {
    for (int x = 0; x < img.width; x++) {
      color c = get(x, y);
      set(x, y, color(255-red(c), 255-green(c), 255-blue(c)));
    }
  }
}