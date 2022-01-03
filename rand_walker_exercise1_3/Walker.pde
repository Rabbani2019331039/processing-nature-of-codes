class Walker{
  int x; //object data
  int y; //object data
  
  Walker(){
    x = width/2;
    y = height/2;
  }
  
  void display(){
    stroke(0);
    
    
    point(x,y);
  }
  
  void step(){
    int X[] = {0,1,-1};
    int Y[] = {0,1,-1};
    int choiceX = int(random(3));
    int choiceY = int(random(3));
    float choice = random(1);
    
    //changing the probability of mouse pointed random walker
    x += choice>=0.15?X[choiceX]:mouseX>x?1:-1;
    y += choice>=0.15?Y[choiceY]:mouseY>y?1:-1;
  }
  
  
}
