/* Alien themed greetings card created by Jan Kroger & Alex Ward
 lAUNCH the program and follow the instructions on the screen
 */
boolean initial;

Cow cow;
Animation animation;
Ufo ufo;
Card card;
Background bg;

void setup() {
  size(700, 1250);
  noStroke();
  smooth();
  animation= new Animation();
  ufo= new Ufo();
  card=new Card();
  bg= new Background();
  cow = new Cow();
}

void draw() {

  if (initial==false) { //check for card, then display
    card.display();
    card.textDisplay();
  }
  if (initial==true) {
   
    //bg.update();
    bg.display();
    cow.display();
    pushMatrix();
    rotate(HALF_PI);
    translate(150, -width-300);
    //background(255);
    animation.display();
    popMatrix();
    ufo.display();
    cow.move();
  }
}


void keyPressed() {
  initial=true;
  ufo.left();
  ufo.right();
  animation.left();
  animation.right();
}
