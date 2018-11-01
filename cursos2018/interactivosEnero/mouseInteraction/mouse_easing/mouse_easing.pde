//se busca una animación mas natural, fluida, en donde los valores
//siguen al maose con soltura, esto se llama easing

//con cada paso del programa el valor actual se mueve un poca mas cerca del valor
//del objetivo

float x;
float easing = 0.01;// aqui se pueden modificar valores como 0.02, 0.03 0.04
float diameter = 12;

void setup() {
  size(220,120);
  smooth();
}

void draw() {
  float targetX = mouseX;
  // el valor de x siempre se acerca a targetX, la velocidad que se asigna en la variable easing es
  //un número entre 0 y 1; un valor mas pequeño en easing provoca un mayor retraso.
  x += (targetX -x)* easing;//todo el trabajo e efectua en esta línea; la diferencia entre--
  //--el objetivo y el valor actual es calculada, entonces se multiplica por easing y se añade a x --
  //-- para traerla mas cerca del objetivo
  ellipse(x,40,diameter,diameter);
  println(targetX+ ":" + x);
}