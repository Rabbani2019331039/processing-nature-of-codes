class Ballon{
  PVector loc, vel, acc;
  float sz;
  Ballon(){
    loc = new PVector(width/2, height);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    sz = 40;
  }
  Ballon(float x, float y, float SZ){
    loc = new PVector(x, y);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    sz = SZ;
  }
  void display(){
    noStroke();
    fill(127);
    ellipse(loc.x, loc.y, sz, sz);
  }
  void update(){
    vel.add(acc);
    vel.limit(5);
    loc.add(vel);
    acc.mult(0);
  }
  void checkEdges(){
    if(loc.x<0){
      loc.x = width;
    }
    else if(loc.x > width){
      loc.x = 0;
    }
  }
  
  boolean isTop(){
     if(loc.y - sz+18 < 0){
       loc.y = sz-18;
       vel.y = -vel.y*sqrt(.5);
       return true;
     }
     return false;
  }
  
  void applyForce(PVector f){
    acc.add(f);
  }
  
}
