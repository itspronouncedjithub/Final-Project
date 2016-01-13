float menu;   //starting menu =  menu 0, game code = menu 1, pause menu = menu 2

void setup() {
  size(1200, 800); //sets size of canvas
  background(0); //sets starting background to black
  menu = 0; //original menu that pops up is the starting menu with the instructions for the user
}

void draw() {
  if (menu==0) { //starting menu
    background(0);  //background for txt is black
    textAlign(CENTER);  // aligns text
    textSize(30);  //sets size of the "Instructions" text
    text("Instructions", width/2, height/2 - 40);  //display title called "Instructions"
    textSize(20); //sets size of the rest of the text to a smaller size than the title
    text("- Press any key to start the ball moving.", width/2, height/2); //Instruction 1
    text("- Press left and right arrow keys on the keyboard to move the paddle.", width/2, height/2 + 20); //Instruction 2
    text("- To activate a powerup, press the spacebar.", width/2, height/2 + 40); //Instruction 2
    text(" - Press 's' key to play", width/2, height/2 +70);
  }
  if (keyPressed == true) { //If s key pressed, exits starting menu and starts game
    if (key == 's') {
      menu = 1;
    }
  } else if (menu==1) {
  }
}