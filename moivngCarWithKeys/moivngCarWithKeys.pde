Car car;

void setup(){
  size(1200,720);
  smooth();
  car = new Car();
}

void draw(){
  background(50);
  car.update();
  car.display();
  
}
