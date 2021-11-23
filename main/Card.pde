class Card {

  String[] card;
  String cardLong;
  
  Card() {
    card= loadStrings("text.txt");
    cardLong= join(card," ");
  }

  void display() {
    fill(#3FFF2E);
    rect(0, 0, width, height);
  }

  void textDisplay() {
    textMode(CENTER);
    textSize(32);
    fill(0);
    text(cardLong, width/2-200, height/2);
  }
}
