Ball b;

void setup() {
  size(600, 400);  
  b = new Ball();
  smooth();
}

void draw() {
  background(50);

  PVector gravity = new PVector(0, 0.2);
  b.applyForce(gravity);

  if (keyPressed) {
    PVector wind = new PVector(0.3, 0);
    b.applyForce(wind);
  }
  
  PVector friction = b.v.get();
  float coFriction = -0.02;
  friction.normalize();
  friction.mult(coFriction);
  
  if(mousePressed){
    b.applyForce(friction);
  }
 
  

  b.update();
  b.edge();
  b.display();
  
  fill(255);
  textSize(15);
  text("press any key to\ngive a wind force to the right",5,20);
  text("press mouse to\napply friction force",width/2,20);
}
