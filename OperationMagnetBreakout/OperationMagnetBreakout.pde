PImage heart;                                                                  //declare PImage of heart

void setup(){                                                                  //this runs once
  size(1100,700);                                                              //set size of game
  heart = loadImage("heart.png");                                              //set heart to load image of heart
  imageMode(CENTER);                                                           //set image placement to center
  image(heart,width/2,height/2,100,100);                                       //place image at center of screen with height and width of 100
}

void draw(){                                                                   //this runs repeatedly
  
}