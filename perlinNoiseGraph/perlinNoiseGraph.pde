// graph of noiseValue across time 


float t = 0.0;
float x=0;
float prev = 0.0;

void setup(){
   size(640,360);
   background(255);
}

void draw(){
  
  float noiseValue = map(noise(t), 0, 1, 0, 300);
  println(noiseValue);
  line(x, noiseValue, x-1, prev);
  //noStroke();
  //point(x, noiseValue);
  t+=0.005;
  x+=1;
  prev = noiseValue;
  if(x > width) x-=width;
  
}
