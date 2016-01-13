Block b;

void setup(){
  size(800,600);
  b = new Block(width/2,height/2);
}

void draw(){
  background(0);
  b.display();
}