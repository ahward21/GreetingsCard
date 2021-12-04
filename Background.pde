class Background {
  PImage field;


  Background() {
    field= loadImage("Field.jpg");
      loadPixels();
    field.loadPixels();
  }



  void displays() {

    /*imageMode(CORNER);
     image(field, 0, 0, width, height);
     imageMode(CENTER);*/
  }

  void display() {
    
  for ( int x=0; x<field.width; x++) {
    for (int y=0; y<field.height; y++) {

      /*int posX= mouseX;
      int posY= mouseY;*/

      int loc = x+y*field.width;

      float r = red(field.pixels[loc]);
      float g = green(field.pixels[loc]);
      float b= blue(field.pixels[loc]);

      float distance= dist(x, y, mouseX,mouseY);
      float adjustBrightness= map(distance, 0, 200, 8, 0);
      r *= adjustBrightness;
      g *= adjustBrightness;
      b *= adjustBrightness;

      r=constrain(r, 0, 150);
      g=constrain(g, 0, 150);
      b= constrain(b, 0, 150);

      color c = color(r, g, b);
      pixels[loc]=c;
    }
  }
  updatePixels();
  }
}
