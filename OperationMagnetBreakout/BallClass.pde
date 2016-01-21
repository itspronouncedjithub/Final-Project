class Ball {
  PVector loc;                                                          //declare a PVector for location
  PVector vel;                                                          //declare a PVector for vel
  int diam;                                                             //int a diameter variable called diam
  Ball(float x, float y) {                                              
    loc = new PVector(x, y);                                            //set pvector to x and y coords
    vel = PVector.random2D();                                           //
    vel.mult(10);
    diam = 20;
  }

  void display() {
    ellipse(loc.x, loc.y, diam, diam);
  }

  void move() {
    loc.add(vel);
  }

  void bounce() {
    if (loc.y + diam/2 < 0) {
      vel.y *= -1;
    }
    if(loc.y - diam/2 > height){
      vel.y *= -1;
    }
    if (loc.x - diam/2 < 0) {
      vel.x *= -1;
    }
    if (loc.x + diam/2 < width) {
      vel.x *= -1;
    }
  }
  
  boolean isInContactWith(Paddle p){
    if(loc.y >= height - h && loc.x >= p.loc.x - b/2 && loc.x <= p.loc.x + b/2){
      return true;
    }
  }
}