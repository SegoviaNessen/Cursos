/*Las Funciones son la construcción básica de los programas en Processing
 El poder de las funciones es la modularidad. Son unidades independientes de 
 software que se usan para construir programas mas complejos(piense en LEGO®), 
 donde cada unidad se usa pra un propósito en específico.
 Un ejemplo en donde las funciones nos son útiles es si quisieramos dibujar
 una forma comleja como un árbol una y otra vez.
 
 Un ordenador corre un programa una línea a la vez. Cuando una función corre
 el ordenador "brinca" a donde la función esta definida y ejecuta el código, después
 regresa a donde estaba
 
 veamos este comportamiento con el siguiente programa*/

void setup() {
  println("Listos!!!");
  dado(20);
  dado(20);
  dado(6);
  println("terminamos!!");
}

void dado(int numLados) {
  int d = 1+(int(random(numLados)));// seleccionan un número aleatorio entre 1 y el mumLados
  println("girando..."+d);
}