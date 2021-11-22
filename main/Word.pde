class Word {

  String[] myText;
  String longText;
  Letter[] letters;

  Word() {
    myText=loadStrings("text.txt");
    longText= join(myText, " ");
    letters = new Letter [longText.length()];

    for (int i = 0; i< letters.length; i++) {
      letters[i] = new Letter (longText.charAt(i), random(20, width-20), random(20, height-20));
    }
  }

void wave() {
  theta+=0.05;
  float q=theta;
  for (int i=0;i<=100;i++) {
    fill(r-i*2, g-i*2, b-i*2);
    float y=sin(q)*mouseY/2;
   
    for (int x = 0; x< letters.length; x++) {
      text(longText.charAt(x)+" ",i*10,y+height/2); //so this is the code that prints the letters but they currently print em in the same place thats the issues 
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
