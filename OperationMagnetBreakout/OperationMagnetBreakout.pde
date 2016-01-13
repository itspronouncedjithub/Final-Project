float menu;

void setup() {
  size(1200, 800);
  background(255);
  menu = 0;
}

void draw() {
  if (menu==0) {
    background(0);
    textAlign(CENTER);
    textSize(30);
    text("Instructions", width/2, height/2 - 40);
    textSize(20);
    text("- Press any key to start the ball moving.", width/2, height/2);
    text("- Press left and right arrow keys on the keyboard to move the paddle.", width/2, height/2 + 20);
    text("- To activate a powerup, press the spacebar.", width/2, height/2 + 40);
  }
  if (keyPressed == true) {
    if (key == 'p' || key == 'P') {
      menu = 1;
    }
  }
}