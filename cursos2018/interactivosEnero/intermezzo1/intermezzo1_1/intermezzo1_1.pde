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
  player = minim.loadFile("elArchivo.mp3");
  player.play();
}

void draw() {
}

void stop() {
  //siempre hay que cerrar las Clases de audio en minim
  player.close();
  //siempre deten Minim antes de salir
  minim.stop();
  //este último se asegura de que todas las rutinas esten limpias
  super.stop();
}