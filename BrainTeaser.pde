import java.util.ArrayList;

ArrayList<ArrayList<RectButton>> cards = new ArrayList<ArrayList<RectButton>>();

void setup () {
  
   String[][] text = { {"6 + 10","15","14 + 3","10 + 5","10 + 14","17"},
                     {"7 + 4","3 + 10","15 + 7","18","14 + 5","24"},
                     {"17","5 + 13","14 + 2","16","11","19"},
                     {"3 + 14","22","13","16","28","13 + 15"}};
    int textx=0;
    int texty=0;
  
  background(240, 179, 233);
  size(700, 580);
  rectMode(CENTER);
  int id=1;
  for(int currenty = 65; currenty<height;currenty+=(130+20)) {
    ArrayList<RectButton> temp = new ArrayList<RectButton>();
    for(int currentx = 50;currentx<width;currentx+=(100+20)) {
      RectButton  b = new RectButton(text[textx][texty],id,currentx, currenty, 100, 130);
      b.display();
      temp.add(b);
      id++;
      texty++;
      
    }
    textx++;
    texty=0;
    cards.add(temp);
    System.out.print(texty+"y  ");
  }
}

void draw() {

  for (ArrayList <RectButton> row : cards) {
    for (RectButton card : row) {
 //     card.display();
      if (card.isPressed()) {
        //show card
        card.showtext();
        System.out.println(card.gettxt());
        //fill(0, 0, 0, 225);
      }
      fill(200);
    }
  }
}