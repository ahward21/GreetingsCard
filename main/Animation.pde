// animation class

class Animation{

float angle=0.0;  
float R=random(80, 255);
float G=random(80, 255);
float B=random(80, 255);
PFont alienFont;
String[] myText;
String longText;
Letter[] letters;

// here we are loading the text from the txt file, aswell as setting the font, size.
  Animation() {
    alienFont = createFont("alienFont.ttf", 18);
    myText=loadStrings("text.txt");
    textFont(alienFont);
    longText= join(myText, " ");
    letters = new Letter [longText.length()];
    for (int i = 0; i< letters.length; i++) { //seperate a word into individual letters in an array
      letters[i] = new Letter (longText.charAt(i), random(20, width-20), random(20, height-20));
    }
  }

  
void display() {
  angle+=0.05; //new rotation value
  float q=angle;
  for (int x = 0; x< letters.length; x++) {  //a loop for displaying each letter individualy 
    for (int i=0; i <=100;i++) {            //displacing the position for each letter within the sin wave
      float y=sin(q)*mouseY/2;              //the actual 'sin wave', y position 
      fill(R-i*2, G-i*2, B-i*2);         // colour gradient
   
      text(longText.charAt(x)+" ",i*10,y+height/2);  //displaying the text
          
        
     
    q+=mouseX/10f; // position displacment for next letter
  }
}
}
}
