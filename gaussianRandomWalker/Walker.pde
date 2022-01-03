import java.util.Random;

Random generator = new Random();

class Walker{
  int x; //object data
  int y; //object data
  int prevX;
  int prevY;

  
  Walker(){
    prevX = x = width/2;
    prevY = y = height/2;
  }
  
  void display(){
    if(x < 0){
      x += width;
      prevX = width;
    }
    else if(x > width){
      x -= width;
      prevX = 0;
    }
    if(y < 0){
      y += height;
      prevY = height;
    }
    else if(y > height){
      y -= height;
      prevY = 0;
    }
    
    stroke(0);
    line(x, y, prevX, prevY);
    prevX = x;
    prevY = y;
  }
  
  void step(){
    float sdX = 5;
    float sdY = 5;
    float meanX = 0;
    float meanY = 0;
    
    float stepX = (float) generator.nextGaussian() * sdX + meanX;
    float stepY = (float) generator.nextGaussian() * sdY + meanY;
    x += stepX;
    y += stepY;
  }
  
  
}
