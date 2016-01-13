class Block {
  Block(){
    
  }
  
  void display(float x, float y){
    if(isOn()){
      //display block
    }
  }
  
  boolean isOn(){
    if(/*ball touches block*/){
      return false;
    } else {
      return true;
    }
  }
}