//vecino de 3*3
PImage img;

void setup() {
  img = loadImage("Papa-Zócalo.jpg");
  size(600, 338);
  image(img, 0, 0);
}

void draw() {
  for (int y = 1; y < img.height-1; y++) {
    for (int x = 1; x < img.width-1; x++) {
      int newX = randInt(x-1, x+1);
      int newY = randInt(y-1, y+1);
      set(x, y, get(newX, newY));
    }
  }
}

// regresa un número entero entre las entradas low y hogh
int randInt(int low, int high) {
  int r = floor(random(low, high+1));
 
  r = constrain(r, low, high);
  return r;
}

void mousePressed() {
  if (mouseButton == LEFT) {
    frameRate(0);
  }
}