Heart h;                                                       //initializing object from class heart
void setup() {                                                 //this runs once
  size(1100, 700);                                             //set size of game
  h = new Heart(40, height-40);                                //initialize h. The parameters are the x and y coords
}

void draw() {                                                  //this runs repeatedly
  h.display();                                                 //display the heart
}