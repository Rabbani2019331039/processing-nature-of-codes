Ballon b;
PVector wind;
float frm;
float windTimeCounter=0;


void setup(){
  size(1200,720);
  //smooth();
  b = new Ballon();
  wind = new PVector(0,0);
  frm = 0;
  
}

void draw(){
  background(50);
  
  PVector antiGravity = new PVector(0, -0.03);
  
  wind.y = 0;
  float windTime = 20;
  frm += 0.1;
  if(windTimeCounter < windTime) windTimeCounter+=1;
  else{
    windTimeCounter = 0.0;
    wind.x = map(noise(frm), 0, 1, -0.02, 0.02);
  }
  
  b.applyForce(antiGravity);
  b.applyForce(wind);
  

  b.isTop();
  b.checkEdges();
  b.update();
  b.display();
  //b.update();
  
  println(b.vel);
}
