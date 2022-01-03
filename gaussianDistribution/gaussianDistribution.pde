
import java.util.Random;

Random generator;

void setup(){
 size(640, 360); 
 generator = new Random(); 
 background(0);
}

void draw(){
  
  float num = (float) generator.nextGaussian();
  float sd = 60;
  float mean = 320;
  
  float x = sd * num + mean;
  
  noStroke();
  fill(255,10);
  ellipse(x, height/2, 16, 16);
  
}
