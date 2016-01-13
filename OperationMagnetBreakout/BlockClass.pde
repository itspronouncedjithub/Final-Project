class Block {
  
  //float location, width, height, and color variables
  PVector loc;
  float wd;
  float ht;
  color c;
  
  Block(float x, float y){
    
    loc = new PVector(x,y);
    
    wd = 80;
    ht = 20;
    
    c = color(255);
  }
  
  void display(){
    //color block
    fill(c);
    stroke(c);
    //draw block centered on given point
    rect(loc.x-(wd/2),loc.y-(ht/2),wd,ht);
  }
}