
import java.util.Random;

Random generator;

void setup(){
 size(640, 640); 
 generator = new Random(); 
 background(255);
}

void draw(){
  
  float num_x = (float) generator.nextGaussian();
  float num_y = (float) generator.nextGaussian();
  
  float sd = 60;
  float mean = 320;
  
  float x = sd * num_x + mean;
  float y = sd * num_y + mean;
  println(x);
  int r = 255 ;
  int g = 128;
  int b = 128;
  
  noStroke();
  fill(r,g,b,30);
  ellipse(x, y, 16, 16);
  
}
