/* Alien themed greetings card created by Jan Kroger & Alex Ward
   lAUNCH the program and follow the instructions on the screen 
*/
boolean initial;

Animation animation;
Ufo ufo;
Card card;

void setup() {
  size(700, 1250);
  noStroke();
  smooth();
  animation= new Animation();
  ufo= new Ufo();
  card=new Card();
}

void draw() {
  if (initial==false) { //check for card, then display 
    card.display();
    card.textDisplay();
  }
  if (initial==true) { 
    pushMatrix();
    rotate(HALF_PI);
    translate(150, -width-300);
    background(255);
    animation.display();
    popMatrix();
    ufo.display();
  }
}


void keyPressed() {
  initial=true; 
}
