class Ufo {
  int xUfo;
  PImage ufo;
  Ufo() {
    ufo=loadImage("UFO Whack.png");
    xUfo=width/2+30;
  }

  void display() {
    imageMode(CENTER);
    image(ufo, xUfo, 70, 800, 380);
  }

  void left() {
    if (keyCode==LEFT) {
      xUfo=xUfo-10;
    }
  }

  void right() {
    if (keyCode==RIGHT) {
      xUfo=xUfo+10;
    }
  }
}
