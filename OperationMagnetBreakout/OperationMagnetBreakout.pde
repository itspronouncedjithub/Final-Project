//create arraylists for each row of block
ArrayList<Block> bi;

float menu;   //starting menu =  menu 0, game code = menu 1, pause menu = menu 2
PImage colorful;

Paddle p;  //initialize object from the Paddle class
Ball b;  //initialize object from the Ball class

void setup() {
  //define size of canvas
  size(1100, 700);

  menu = 0; //original menu that pops up is the starting menu with the instructions for the user

  p = new Paddle();
  b = new Ball(width/2, height/2);

  //define arraylists after the size has been defined
  bi = new ArrayList<Block>();


  for (int x = 27; x < width; x+= 55) {
    for (int y = 0; y < 5; y++) {
      bi.add(new Block(x, 10 + y * 20, 5-y));
    }
  }
  imageMode(CENTER);                                                    //center image placement
  colorful = loadImage("colorful.jpg");                                 //load image of colorful explosion
}

void draw() {
  background(0);

  if (menu==0) {
    background(0);  //background for txt is black
    image(colorful, width/2, height/2, colorful.width, colorful.height);         //loads background image
    textAlign(CENTER);  // aligns text
    textSize(50);
    fill(50);
    text("BREAKOUT", width/2, height/2);
    textSize(25);
    text(" - Press 'i' to view instructions", width/2, height/2 +100);
    text(" - Press ENTER to play", width/2, height/2 +70);
    if (keyPressed == true && key == ENTER) { //If enter key pressed, exits starting menu and starts game
      menu = 2;
    }
      if (keyPressed == true && key == 'i') { //If i key pressed, exits starting menu and starts game
        menu = 1;
      }
    }
    if (menu==1) { //starting menu
      background(0);  //background for txt is black
      textAlign(CENTER);  // aligns text
      fill(255);
      textSize(30);  //sets size of the "Instructions" text
      text("Instructions", width/2, height/2 - 40);  //display title called "Instructions"
      textSize(20); //sets size of the rest of the text to a smaller size than the title
      text("- Press any key to start the ball moving.", width/2, height/2); //Instruction 1
      text("- Press left and right arrow keys on the keyboard to move the paddle.", width/2, height/2 + 20); //Instruction 2
      text("- To activate a powerup, press the spacebar.", width/2, height/2 + 40); //Instruction 2
      text(" - Press ENTER to play", width/2, height/2 +70);
      if (keyPressed == true && key == ENTER) { //If enter key pressed, exits starting menu and starts game
        menu = 2;
      }
    } else if (menu == 2) {
      p.move();  //move paddle according to player input
      p.display();  //display paddle
      b.move();  //move ball
      b.display();  //display ball
      b.bounce();
      if (b.isInContactWith(p)) {
        b.vel.y *= -1;
        b.vel.x = map(b.loc.x - p.loc.x, 0, 100, -5, 5);
      }


      //create first row of blocks

      for (int i = bi.size() - 1; i >= 0; i--) {
        Block b1 = bi.get(i);
        b1.display();
        //if (b.loc.x > b1.loc.x && b.loc.x < b1.loc.x + b1.wd && b.loc.y - b.diam/2 < b1.loc.y + b1.ht) {
        //  if(b1.health > 0){
        //    b.vel.y *= -1;
        //    b1.health--;
        //  }
        //}
        if (b.loc.x + b.diam/2 > b1.loc.x && b.loc.x - b.diam/2 < b1.loc.x + b1.wd && b.loc.y + b.diam/2 > b1.loc.y && b.loc.y - b.diam/2 < b1.loc.y + b1.ht) {
          //if (b1.health < 0) {
          bi.remove(i);
          b.vel.y *= -1;
          //}
        }
      }

      //if (b.loc.x > b1.loc.x && b.loc.x < b1.loc.x + b1.wd && b.loc.y + b.diam/2 > b1.loc.y){
      // b.vel.y *= -1;
      //}


      if (p.loc.x + p.b > width) {
        p.loc.x = width - p.b;
      }
      if (p.loc.x < 0) {
        p.loc.x = 0;
      }

      if (bi.size() == 0) {
        menu = 2;
      }
      if (menu == 3) {
        fill(255);
        textAlign(CENTER);
        text("GAME OVER", width/2, height/2);
      }
    }
  }