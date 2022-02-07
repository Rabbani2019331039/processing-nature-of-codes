class Ball {
  PVector loc;
  PVector v;
  PVector acc;

  Ball() {
    loc = new PVector(width/2, height/2);
    v = new PVector(0, 0);
    acc = new PVector(0, 0);
  }

  void applyForce(PVector f) {
    acc.add(f);
  }


  void update() {
    v.add(acc);
    loc.add(v);
    acc.mult(0);
    //v.limit(5);
  }

  void edge() {
    if (loc.x + 20 > width) {
      loc.x = width-20;
      v.x *= -1;
    }
    if (loc.x - 20 < 0) {
      loc.x = 20;
      v.x *= -1;
    }

    if (loc.y + 20 > height) {
      loc.y = height-20;
      v.y *= -1;
    }
    if (loc.y - 20 < 0) { 
      loc.y = 20;
      v.y *= -1;
    }
  }

  void display() {
    noStroke();
    fill(255);
    ellipse(loc.x, loc.y, 40, 40);
  }
}
