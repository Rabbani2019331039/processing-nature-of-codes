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
    int X[] = {0,1,1,1,0,-1,-1,-1};
    int Y[] = {-1,-1,0,1,1,1,0,-1};
    int choiceX = int(random(8));
    int choiceY = int(random(8));
    x+=X[choiceX];
    y+=Y[choiceY];
  }
  
  
}
