//card class
class Card {

  String[] card;
  String cardLong;
  
  Card() {
    card= loadStrings("text.txt");
    cardLong= join(card," ");
  }

  void display() {
    fill(#3FFF2E);   //card overlay
    rect(0, 0, width, height);
  }

  void textDisplay() {
    textMode(CENTER);
    textSize(28);          //card text
    fill(0);
    text(cardLong, width/2, height/3);
    text("press  any  key  to  be  probed", width/2-300, height/3-64);
    textSize(18);
    
  }
}
