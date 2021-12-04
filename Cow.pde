class Cow {
  PImage cow;
  float cowX;
  float cowY;
  boolean found;


  Cow() {
    cowX=random(100, 600);
    cowY=1000;
    cow= loadImage("cow.png");
  }

  void display() {
    imageMode(CENTER);

    rectMode(CENTER);
    rect(cowX, cowY, 300, 200);

    image(cow, cowX, cowY, 300, 200);
    imageMode(CORNER);

    if (dist(mouseX, mouseY, cowX, cowY)<200) {
      imageMode(CENTER);
      image(cow, cowX, cowY, 300, 200);
      imageMode(CORNER);
    } else {
      rectMode(CENTER);
      fill(0);
      rect(cowX, cowY, 300, 200);
     
    
    }
  }



  void move() {
    if (mouseY<400) {
      cowY=cowY-10;
    } else if (mouseY>400&&cowY<1000) {
      cowY=cowY+10;
    }
  }
}
