import ddf.minim.*;

Minim minim;
AudioInput mic;



void setup() {
  size(500,500);
  
  minim = new Minim(this);
  mic = minim.getLineIn();

  frameRate(120);

  
}

void draw() {
  background(150);
  
  
  ellipse(width/2,height/2, abs(mic.left.get(0) *10000),abs(mic.left.get(0) *10000));
  if(abs(mic.left.get(0) *1000)>= 3.0){
  fill(0,255,50);
  println(abs(mic.left.get(0) *1000));
  }else{
    fill(0,0,0);
  }
  
}