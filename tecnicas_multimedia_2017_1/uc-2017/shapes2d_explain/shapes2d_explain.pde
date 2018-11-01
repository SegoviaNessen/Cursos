void setup() {
  size(640, 480);
  smooth();
}
/*esta es función personalizada la cual
dibujará un grid de 10 * 10 px
 y será llamada en la función draw.
 utiliza dos for loops para dibujar las lineas 
 una para las horizintales otra para las
 verticales*/
void drawGrid() {
  stroke(225);
  for (int i = 0; i < 64; i++) {
    line(i*10, 0, i*10, height);
  }

  for (int i = 0; i < 48; i++) {
    line(0, i*10, width, i*10);
  }
}

void draw() {
  background(255);
  
  drawGrid();
  
  stroke(0);
  
  //rectangulos amarillos
  /*los rectángulospueden contener 4, 5 u 8 
 parámetros */
  fill(255,255,0);
  rect(20,20,120,120);
  rect(180,20,120,120,20);
  rect(340,20,120,120,20,10,40,80);
  rect(500,40,120,80);
  
  // elipses rojas
  fill(255,0,0);
  ellipse(80,240,120,120);
  ellipse(240,240,120,80);
  ellipse(400,240,80,120);
  
  //triangulos azules
  fill(0,0,255);
  triangle(560,180,620,300,500,300);
  triangle(40,340,140,460,20,420);
  
  //quad cian
  //usa 8 parámetros ya que tiene 4 puntos
  fill(0,255,255);
  quad(180,340,300,340,300,380,180,460);
  quad(400,340,440,400,400,460,360,400);
  quad(500,340,620,400,500,460,560,400);
}

