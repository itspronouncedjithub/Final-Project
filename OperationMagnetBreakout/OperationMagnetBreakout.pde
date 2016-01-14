ArrayList<Block> b;

void setup() {
  size(1100, 700);
  b = new ArrayList<Block>();
}

void draw() {
  background(0);

  for (int i = b.size() - 1; i >= 0; i--) {
    Block bl = b.get(i);
    bl.display((bl.wd/2) + (i*bl.wd), 10);
  }
}