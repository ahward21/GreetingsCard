class Cow {
  PImage cow;
  float cowX;
  float cowY;

    Cow() {
    cowX=random(100, 600);
    cowY=1000;
    cow= loadImage("cow.png");
  }

  void display() {
    imageMode(CENTER);
    image(cow, cowX, cowY, 300, 200);
    imageMode(CORNER);
  }



  void move() {
    if (mouseY<400) {
      cowY=cowY-10;
    } else if (mouseY>400&&cowY<1000){
    cowY=cowY+10;
    
    }
}
}
