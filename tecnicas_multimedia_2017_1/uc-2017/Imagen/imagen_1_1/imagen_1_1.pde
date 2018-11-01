// trabajando con imágenes.
// simplemente salva y arrastra el
//archivo jpg en el skecth.
//mi imagen es de 800 * 600 px
//cuando la arrasttramos Processing crea 
//una copia en el folder.

//antes de usar cualquier imagen necesitamos
//declarar un objeto de tipo PImage
PImage img;

// algunos settings para jugar

boolean pixelMode = false;
//estas variables están determinadas para
//definir el tamaño de la región de pixeles
//que queremos copiar
float copyWidth = 50;
float copyHeight = 30;

void setup() {
  size(500, 628);
  smooth();
  frameRate(30);
//la función loadImage carga la imagén del folder
  img = loadImage("botero.jpg");
}

void draw() {
  int x1 = floor(random(width));
  int y1 = floor(random(height));
  int x2 = floor(random(width));
  int y2 = floor(random(height));
  

  copyWidth = map(mouseX, 0, width,30,80);
  copyHeight = map(mouseY, 0, height,30,80);
  int cH = int(copyWidth);
  int cW = int(copyHeight);
  if (pixelMode == true) {
    /*los métodos get y set de la clase Pimage se usan para
    copiar o cambiar de color los pixeles en la imagen.
    se pueden usar con 2 o 4 parámetros
    get con 2 parametros nos da el color de una coordenada en
    específico. Si usamos cuatro nos regresa una imgen con las coordenadas
    x y en los dos primeros y luego los dos restantes nos dan
    el ancho y el largo de la muestra*/
    color c1 = img.get(x1, y1);
    color c2 = img.get(x2, y2);
    /*el método set es similar a get pero es usado para cambiar el color
    de un pixel determinado o un área rectangular*/
    img.set(x1, y1, c2);
    img.set(x2, y2, c1);
  } else {
    PImage crop1 = img.get(x1, y1, cH, cW);
    PImage crop2 = img.get(x2, y2, cH, cW);
    img.set(x1, y1, crop2);
    img.set(x2, y2,crop1);
  }
  image(img, 0, 0);
}