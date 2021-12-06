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
  size(1920, 1200);
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
   
    
    bg.display();
    cow.display();
    pushMatrix();
    rotate(HALF_PI);
    translate(150, (-width/2)-630);
    //background(255);
    animation.display();
    popMatrix();
    ufo.display();
    cow.move();
    //bg.flashlight();
  }
}


void keyPressed() {
  initial=true;
  ufo.left();
  ufo.right();
  animation.left();
  animation.right();
  if (key == 's'){
     bg.searchLight = false;
  }
  if (key == 'r'){
     bg.searchLight = true;
  }
  
}
