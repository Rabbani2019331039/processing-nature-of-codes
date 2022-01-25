class Car{
 PVector loc;
 PVector vel;
 PVector acc;
 
 Car(){
   loc = new PVector(0,height/2);
   vel = new PVector(0,0);
   acc = new PVector(0,0); 
 }
 
 void display(){
   noStroke();
   fill(175);
   ellipse(loc.x, loc.y, 30, 20);
 }
 
 void update(){
   if(keyPressed){  
     if(keyCode== UP){
       acc.y = -.1;
           vel.add(acc);
     }
     else if(keyCode == DOWN){
       acc.y = .1;
           vel.add(acc);
     }
      else if(keyCode == LEFT){
       acc.x = -.1;
           vel.add(acc);
     }
      else if(keyCode == RIGHT){
       acc.x = .1;
           vel.add(acc);
     }
     else if(key  == ' '){
       acc.set(vel);
       acc.normalize();
       acc.mult(-.4);
       
       vel.add(acc);
     }
   }
    
    println(vel);
    loc.add(vel);
 }
  
  
}
