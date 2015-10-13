/*
cycloid

publicをやめてクラスにすると、
x = cycloid.x
y = cycloid.y
ができる。

*/

float x = 0;
float y = 0;
int eSize = 10;
float count = 0;
float frequency = 5;
float radius = 40;

Cycloid cyc;

void setup(){
  frameRate(30);
  size(1200,600);
  colorMode(HSB,360,100,100,100);
  cyc = new Cycloid();
}

void draw(){
  background(0);
  smooth();
  cyc.update(count * frequency, radius);
  ellipse(cyc.x,cyc.y+(height/2),eSize,eSize);
  count ++;
}


class Cycloid{
  float x;
  float y;
  
  Cycloid(){
    x = 0;
    y = 0;
  }
  
  void update(float Angle, float Radius){
    this.y = (1 - cos(radians(Angle))) * Radius;
    this.x = (radians(Angle) - sin(radians(Angle))) * Radius;
  }
}