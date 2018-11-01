// declaramos una variable para color
color c;

void setup() {
  size(640, 480);
  smooth();

  c = color(random(255), random(225), random(255));
}

void draw() {
  colorMode(RGB, 255);
  background(255);

  //escala de grises (mococromo)
  noStroke();
  for (int i = 0; i < 255; i++) {
    fill(i);
    rect(i*2+20, 20, 2, 120);
  }
  stroke(0);
  noFill();
  rect(20, 20, 500, 120);

  // color aleatorio
  fill(c);
  stroke(0);
  rect(540, 20, 80, 120);
  
  //colores opacos
  stroke(0);
  fill(255,0,0);
  rect(20,160,75,60);
  fill(0,255,0);
  rect(95,160,75,60);
  fill(0,0,255);
  rect(170,160,75,60);
  fill(0,255,255);
  rect(245,160,75,60);
  fill(255,0,255);
  rect(320,160,75,60);
  fill(255,255,0);
  rect(395,160,75,60);
  fill(255);
  rect(470,160,75,60);
  fill(0);
  rect(545,160,75,60);
  
  //background negro detrás de los colores transparentes
  rect(0,250,width, 70);
  
  float t = map (mouseX,0, width,0,255);
  
  // colores transparentes
  fill(255,0,0,t);
  rect(20,220,75,60);
  fill(0,255,0,t);
  rect(95,220,75,60);
  fill(0,0,255,t);
  rect(170,120,75,60);
  fill(0,255,255,t);
  rect(245,220,75,60);
  fill(255,0,255,t);
  rect(320,220,75,60);
  fill(255,255,0,t);
  rect(395,220,75,60);
  fill(255,t);
  rect(470,220,75,60);
  fill(0,t);
  rect(545,220,75,60);
  
  //HSB color
  colorMode(HSB, 360,100,100,100);
  
  float h = map(mouseX,0,width,0,360);
  float s = map(mouseY,0,height,0,100);
  
  noStroke();
  for(int i = 0; i < 100; i++){
  fill(h,s,i);
  rect(20 + i*6, 340,6,120);
  }
  
  noFill();
  stroke(0);
  rect(20,340,600,120);
}

/*

HSB

El modelo HSB se basa en la percepción humana del color
y describe tres características fundamentales del color:

Tono

Color reflejado o transmitido a través de un objeto.
Se mide como una posición en la rueda de colores estándar y se expresa en grados entre 0° y 360°. Normalmente, el tono se identifica por el nombre del color, como rojo, naranja o verde.

Saturación

A veces denominada cromatismo, es la fuerza o pureza del color.
La saturación representa la cantidad de gris que existe en
proporción al tono y se expresa como un porcentaje comprendido
entre el 0% (gris) y el 100% (saturación completa).
En la rueda de colores estándar, la saturación aumenta a
medida que nos aproximamos al borde de la misma.

Brillo

Luminosidad u oscuridad relativa del color y normalmente
se expresa como un porcentaje comprendido entre 0% (negro) 
y 100% (blanco).
*/


