ArrayList<Block> b;

void setup(){
  size(1100,700);
  b = new ArrayList<Block>(5);
}

void draw(){
  background(0);
  
  for (int i = b.size() - 1; i >= 0; i--) {
    Block bl = b.get(i);
    bl.display();
  }
}