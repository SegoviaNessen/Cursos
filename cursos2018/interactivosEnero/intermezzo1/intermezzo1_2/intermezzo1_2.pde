/*Intermezzo1_2
 una breve introducción a el uso de la librería de audio minim
 El sketch nos demostrará como manipular la ganancia del archivo
 por medio del mouse.
 */

import ddf.minim.*;

Minim minim;
AudioPlayer player;


void setup() {
  size(700,200);
  minim = new Minim(this);

  player = minim.loadFile("pianola.mp3");
  player.play();
}

void draw() {
  float vol = map(mouseX, 0, width, -60., 0.);
  player.setGain(vol);
  
}

void stop() {
  //siempre hay que cerrar las Clases de audio en minim
  player.close();
  //siempre deten Minim antes de salir
  minim.stop();
  //este último se asegura de que todas las rutinas esten limpias
  super.stop();
}