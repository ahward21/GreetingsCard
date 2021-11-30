class Background {
  PImage field;


  Background() {
    field= loadImage("Field.jpg");
    field.loadPixels();

  }



  void display() {

    imageMode(CORNER);
    image(field, 0, 0, width, height);
    imageMode(CENTER);
  }

/*
  void update() {
    for (int i = 0; i<pixels.length; i++) {
      if (dist(xLetter, pixels[i])<20 && dist( yLetter, pixels[i])<20) {
        color c= color(255);

        pixels[i]=c;
      }
    }
    updatePixels();
  }*/
}
