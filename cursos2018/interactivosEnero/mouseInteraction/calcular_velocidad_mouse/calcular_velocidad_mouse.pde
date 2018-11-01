//las variables pmouseX y pmouseY pueden ser usadas
//para calcular la velocidad del mouse.

//esto se logra midiendo la distancia entre la posición actual y la mas reciente.

//si el mouse se mueve lentamente la distancia es pequeña, esta última se incrementa al
//mover mas rapido el mouse.

//la función dist() simplifica este cálculo.

//en este sketch la velocidad del mouse se usa para determinar el grosor de la línea dibujada.

void setup() {
  size(420,180);
  smooth();
  stroke(0,102);
}

void draw() {
  float weight = dist(mouseX,mouseY,pmouseX,pmouseY);
  strokeWeight(weight);
  line(mouseX,mouseY,pmouseX,pmouseY);
}