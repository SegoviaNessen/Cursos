/*podemos usar las teclas de flecha para mover
el círculo por la pantalla.
las letras r,g,b,c,m y para cambiar el color
y la letra s para poner o quitar el contorno*/

int x;
int y;
int r;
color c;
boolean drawStroke;

void setup() {
  size(640, 480);
  smooth();
  strokeWeight(2);

  x = width/2;
  y = height/2;
  r = 80;
  c = color(255, 0, 0);
  drawStroke = true;
}

void draw() {
  background(255);

  if (drawStroke == true) {
    stroke(0);
  } else {
    noStroke();
  }

  fill (c);
  ellipse(x, y, r*2, r*2);
}
/*esta función se ejecuta cando presionamos una
tecla*/
void keyPressed () {
  if ( key == CODED) {
    /*keyCode detecta caundo una tecla especial
    es presionada*/
    if (keyCode == RIGHT) {
      x += 10;
    } else if (keyCode == LEFT) {
      x -= 10;
    } else if (keyCode == UP) {
      y -= 10;
    } else if (keyCode == DOWN) {
      y += 10;
    }
  }

  x = constrain(x, r, width-r);
  y = constrain(y, r, height-r);
}
/*se ejecuta cuando soltamos tecla*/
void keyReleased() {
  switch(key) {
  case 'r' :
    c = color(255, 0, 0);
    break;
  case 'g' :
    c = color(0, 255, 0);
    break;
  case 'b' :
    c = color(0, 0, 255);
    break;
  case 'c' :
    c = color(0, 255, 255);
    break;
  case 'm' :
    c = color(255, 0, 255);
    break;
  case 'y' :
    c = color(255, 255, 0);
    break;
  default :
    break;
  }
}

/*funciona parecido a keyPressed pero ignora las
teclas especioles como las flechas, enter, ctrl, alt*/
void keyTyped() {
  /*la ariable del sistema key contiene el valor 
  de la última tecla presionada*/
  if (key == 's') {
    drawStroke = !drawStroke;
  }
}

