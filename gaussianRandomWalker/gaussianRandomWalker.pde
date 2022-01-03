
Walker w;

void setup(){
  size(720,480);
  w = new Walker();
  background(255);
}

void draw(){
  w.step();
  w.display();
  
}
