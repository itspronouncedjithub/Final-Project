Paddle p;                                                               //declare a new Paddle called p
Ball b;                                                                 //declare a new Bucket called b

void setup() {                                                          //this runs once
  size(1200, 800);                                                      //set size
  p = new Paddle();                                                     //initialize p
  b = new Ball(width/2, height/2);                                      //initialize b. The parameters are the coords of the location o the buall
  background(0);                                                        //set background color
}

void draw() {                                                           //this runs repeatedly
  background(0);                                                        //set background color
  p.move();                                                             //move the paddle
  p.display();                                                          //display the paddle
  b.move();                                                             //move the ball
  b.display();                                                          //display the ball
  b.bounce();                                                           //have the ball bounce
  if(b.isInContactWith(Paddle p){                                       //check to see if the ball is in contact with the point represented by the paddle
    b.vel.x *= -1;                                                      //if it is, multiply x velocity of the ball by -1
  }
}