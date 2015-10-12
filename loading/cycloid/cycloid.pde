/*
cycloid
*/

float x = 0;
float y = 0;
int eSize = 10;
float count = 0;
float frequency = 5;
float radius = 40;

void setup(){
  frameRate(30);
  size(1200,600);
  colorMode(HSB,360,100,100,100);
}

void draw(){
  background(0);
  smooth();
  
  x = count;
  y = Cycloid.cycloid(count * frequency, radius) + (height / 2);
  
  ellipse(x,y,eSize,eSize);
  
  count ++;
}


public static class Cycloid{
  
  Cycloid(){
  }
  
  public static float cycloid(float Angle, float Radius){
    float y;
    y = (1 - cos(radians(Angle))) * Radius;
    return y;
  }    
}