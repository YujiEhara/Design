/*
loadingアニメーションのためのテンプレート
*/

void setup(){
  
  frameRate(30);
  size(60,60);
  colorMode(HSB,360,100,100,100);
  
}

void draw(){
  
  smooth();
  saveFrame("output/loading_####.png");
  
}