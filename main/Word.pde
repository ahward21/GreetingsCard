class Word {

  String[] myText;
  String longText;
  Letter[] letters;
  float angle=0.0;
  float r=random(100, 255);
  float g=random(100, 255);
  float b=random(100, 255);

  Word() {
    myText=loadStrings("text.txt");
    longText= join(myText, " ");
    letters = new Letter [longText.length()];

    for (int i = 0; i< letters.length; i++) {
      letters[i] = new Letter (longText.charAt(i), random(20, width-20), random(20, height-20));
    }
  }

void wave() {
  angle+=0.05;
  float q=angle;
  for (int x = 0; x< letters.length; x++) {
    for (int i=0;i<=100;i++) {
      float y=cos(q)*mouseY/2;
      fill(r-i*2, g-i*2, b-i*2);
      text(longText.charAt(x)+" ",i*10,y+height/2);
          
        
   
    //so this is the code that prints the letters but they currently print em in the same place thats the issues 
    q+=mouseX/250f;
  }
}
}


  void display() {
    for (int i = 0; i< letters.length; i++) {
      print(longText.charAt(i)+" ");
    }
  }
}
