class Block {

  //float location, width, height, and color variables
  PVector loc;
  float wd;
  float ht;
  color c;

  Block(float x, float y) {

    loc = new PVector(x, y);

    wd = 80;
    ht = 20;

    c = color(255);
  }

  void display(float x, float y) {
    //color block
    fill(c);
    stroke(c);
    //draw block centered on given point
    rect(x-(wd/2), y-(ht/2), wd, ht);
  }
}