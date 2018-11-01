/*Intermezzo1_1
 una breve introducción a el uso de la librería de audio minim
 El sketch nos demostrará como crear un sencillo reproductor
 para nuestras interacciones.
 */

import ddf.minim.*;

Minim minim;
AudioPlayer player;


void setup() {
  //cuando le indicamos el argumento this a minim nos permite
  //cargar archivos de la carpeta data
  minim = new Minim(this);
  // loadFile busca estos archivos, pero tambien
  //puede cargar una ruta completa o una URL.
  player = minim.loadFile("pianola.mp3");
  //player.play();
}

void draw() {
  float d = dist(width/2, height/2, mouseX, mouseY);
  line(width/2, 0, width/2, height);
  line(0,height/2,width, height/2);
  if(d <= 3.){
    player.play();
  } else{
    player.pause();
    player.rewind();
  }
  println(d);
}

void stop() {
  //siempre hay que cerrar las Clases de audio en minim
  player.close();
  //siempre deten Minim antes de salir
  minim.stop();
  //este último se asegura de que todas las rutinas esten limpias
  super.stop();
}