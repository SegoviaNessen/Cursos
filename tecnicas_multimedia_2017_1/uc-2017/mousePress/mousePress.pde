//existen 5 funciones y 6 variables del sistema
//para sensar la interacción del mouse

void setup() {
  size(640, 480);
  smooth();
  background(255);
}

void draw() {
}
/*esta función es lamada cuando presionamos un 
botón del mouse; aqui se usa con la variable del sistema
mouseButton*/
void mousePressed() {
  /*esta variable puede determinar cuál botón se
  presiona pudiendo ser RIGTH, LEFT o CENTER*/
  if (mouseButton == RIGHT) {
    background(255);
  }
}
/*esta función se ejecuta cada vez que el
mouse se mueve sin presionar ningún botón*/
void mouseMoved() {
  stroke(0, 64);
  strokeWeight(1);
  fill(255, 32);
  /*aqui tenemos las variables del sistema mouseX, mouseY
  ya conocidas y las nuevas pouseX, y pmouseY, las cuales
  almacenan las coordenadas previas de la posición
  correspondiente*/
  float d = dist(mouseX, mouseY, pmouseX, pmouseY);
  constrain(d, 8, 100);
  ellipse(mouseX, mouseY, d, d);
}
/*esta función se ejecuta cuando se mueve el
mouse mientras se presiona un botón*/
void mouseDragged() {
  stroke(0);
  float d = dist (mouseX, mouseY, pmouseX, pmouseY);
  constrain(d, 8, 100);
  ellipse(mouseX, mouseY, d, d);
}

void mouseReleased() {
  noStroke();
  fill(255, 16);
  rect(0, 0, width, height);
}

/* esta función es ejecutado cuando nostros
damos click en un botón del mouse; esto es
presionar y soltar el botón*/
void mouseClicked() {
  fill(255, 0, 0, 128);
  float d = random(20, 200);
  ellipse(mouseX, mouseY, d, d);
}

