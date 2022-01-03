//main concept is probability. we have to force the probability of a certain
//decision meaning forcing our probability. To do this we can use two method
//one is get a random number from 0-1 (floating point) then for certain outcome we will
//choose our decision. like...
//if(random(1)<0.1) go left

//with this we are limiting our random walker to go left around 10% of the time and
//so on for the other direcetion.

//another method is making an multiset of {0,1,-1} that way we can pick random int
//and choose our desired direction
//for {0,1,-1} the chances of our random walker to to move lef, right or stay is equal
//which is approximately 33.33%
//now if we take{ 0,1,1,1,-1} now the chances of the walker to go right is more than 
//the other two. here we are forcing our one option more than others


// the code starts frome here
Walker w;

// setting our window and initializing our variables
void setup(){
  size(640,360);
  w = new Walker();
  background(255);
}


void draw(){
  w.step();
  w.display();
  
}
