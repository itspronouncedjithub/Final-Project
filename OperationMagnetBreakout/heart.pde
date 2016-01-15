class Heart {                                                  
  PImage heart;                                                //declare an image
  PVector loc;                                                 //intialize pvector


  Heart (float x, float y) {                                   //create constructor for heart
    heart = loadImage("heart.png");                            //set heart to load image of heart
    loc = new PVector(x, y);                                   //set location vector                         
  }
            


  void display () {                                            //create new command to display heart
    imageMode(CENTER);                                         //set image placement to center
    image(heart, loc.x, loc.y, 50, 50);                        //place image at center of screen with height and width of 100
  }
}