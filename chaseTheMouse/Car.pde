class Car{
 PVector loc;
 PVector vel;
 PVector acc;
 
 Car(){
   loc = new PVector(0,height/2);
   vel = new PVector(0,0);
   acc = new PVector(1,0); 
 }
 
 void display(){
   noStroke();
   fill(175);
   ellipse(loc.x, loc.y, 30, 30);
 }
 
 void update(){
   PVector mouse = new PVector(mouseX, mouseY);
   mouse.sub(loc);
   float dist = mouse.mag();
   mouse.normalize();
   
   acc.set(mouse);
   acc.mult(.01*dist);
   
   vel.add(acc);
   vel.limit(10);


   loc.add(vel);
   println(vel);
 }
  
  
}
