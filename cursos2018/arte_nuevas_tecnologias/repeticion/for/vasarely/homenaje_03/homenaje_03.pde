float x,x1,x2,x3,x4,x5;

void setup() {
  size(447, 423);
  strokeCap(SQUARE);
  background(0);
  x =0;
  x1 = 30;
  x2 = 60;
  x3 = 90;
  x4 = 110;
  x5 = 140;
}

void draw() {
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  x+=14;
  x1+=11;
  x2+=9;
  x3+=11;
  x4+=14;
  x5+=17;
  stroke(255);
  strokeWeight(2);
  line(x,0,x,height);
  strokeWeight(4);
  line(x1,30,x1,height-30);
  strokeWeight(6);
  line(x2,60,x2,height-60);
  strokeWeight(8);
  line(x3,90,x3,height-90);
  strokeWeight(10);
  line(x4,110,x4,height-110);
  strokeWeight(10);
  line(x5,140,x5,height-140);
  
  
  if (x >= width) {
    x = 0;
  }
  if (x1 >= width-30) {
    x1 = 30;
  }
  if (x2 >= width-60) {
    x2 = 60;
  }
  if (x3 >= width-90) {
    x3 = 90;
  }
  if (x4 >= width-110) {
    x4 = 110;
  }
  if (x5 >= width-140) {
    x5 = 140;
  }
}


