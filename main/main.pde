float angle=0.0;
float r=random(100, 255);
float g=random(100, 255);
float b=random(100, 255);
boolean initial;
Word word;
Ufo ufo;
Card card;

void setup() {
  size(700, 1080);
  noStroke();
  smooth();
  word= new Word();
  ufo= new Ufo();
  card=new Card();
}

void draw() {
  if (initial==false) {
    card.display();
    card.textDisplay();
  }
  if (initial==true) {
    pushMatrix();
    rotate(HALF_PI);
    translate(150, -width-200);
    background(255);
    word.wave();
    popMatrix();
    ufo.display();
  }
}


void keyPressed() {
  initial=true;
}
