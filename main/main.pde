float theta=0.0;
float r=random(100, 255);
float g=random(100, 255);
float b=random(100, 255);
Word word;

void setup() {
  size(800, 400);
  noStroke();
  smooth();
  word= new Word();
}

void draw() {
  background(255);
  word.wave();
  
}
