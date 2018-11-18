PImage barco;

float x = 0;
float y = 0;
float valor = 0;

void setup() {
  frameRate(30);
  size(800, 600);
  noStroke();
  barco = loadImage("barquinho.png");
}
void draw() {
  background(0, 180, 210);
  desenhaOnda();
  y = sin(x);
  x+= 0.1;
  imageMode(CENTER);
  translate(x*50, y*20);

  //if (y>0) {
  //  valor = 0.1;
  //} else {
  //  valor = -0.1;
  //}
  valor = y*PI/60;
  rotate(valor);
  println(valor);
  //rect(0, 280, 512/15,233/15);
  image(barco, 0, 280, 512/7, 233/7);
}

void desenhaOnda() {
  float i = 0;
  float j = 0;
  while (i < 100) {
    ellipse(i*50, j*20+300, 5, 5);
    i+= 0.05;
    j = sin(i);
  }
}
