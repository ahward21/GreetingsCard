class Ufo{
  
  PImage ufo;
  Ufo(){
    ufo=loadImage("UFO Whack.png");
  }
  
  void display(){
    imageMode(CENTER);
    image(ufo,width/2+30,70,800,380);
  }
}
  
  
