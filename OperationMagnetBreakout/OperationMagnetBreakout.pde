Paddle p;
Ball b;

void setup() {
  size(1200, 800);
  p = new Paddle();
  b = new Ball(width/2, height/2);
  background(0);
}

void draw() {
  background(0);
  p.move();
  p.display();
  b.move();
  b.display();
  //b.bounce();
}