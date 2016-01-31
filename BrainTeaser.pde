import java.util.ArrayList;

ArrayList<ArrayList<RectButton>> cards = new ArrayList<ArrayList<RectButton>>();

void setup () {
  
   String[][] text = { {"6 + 1","15","14 + 3","10 + 5","10 + 14","20"},
                     {"7 + 4","3 + 10","15 + 7","18","14 + 5","24"},
                     {"17","5 + 13","14 + 2","16","11","19"},
                     {"3 + 17","22","13","7","28","13 + 15"}};   
                     
     int[] solutionid = {22,4,13,2,12,19,17,21,20,14,18,5,3,10,16,15,7,11,6,9,8,1,24,23};
     
    int textx=0;
    int texty=0;
  
  background(240, 179, 233);
  size(700, 580);
  rectMode(CENTER);
  
  int id = 1;
  int sid = 0;
  for(int currenty = 65; currenty<height;currenty+=(130+20)) {
    ArrayList<RectButton> temp = new ArrayList<RectButton>();
    for(int currentx = 50;currentx<width;currentx+=(100+20)) {
      RectButton  b = new RectButton(text[textx][texty],id,(solutionid[sid]),currentx, currenty, 100, 130);
      b.display();
      b.showtext();
      temp.add(b);
      id++;
      if(sid<23){sid++;}
      texty++;
      
    }
    textx++;
    texty=0;
    cards.add(temp);
  }
}

void draw() {
  for (ArrayList <RectButton> row : cards) {
    for (RectButton card : row) {
      if(!card.getPairFound()){card.display();}
      boolean[] bool = card.isPressed();
      if (bool[0]) { //isPressed 
        //show card
        card.showtext();
//        fill(0, 0, 0, 225);
      }
   //   fill(200);
    }
  }
}

void mouseReleased(){
   for (ArrayList <RectButton> row : cards) {
     for (RectButton card : row) {
       if(card.isOver()){
         if(card.wasClicked()){
           System.out.println("WIN");
          // card.found();
         } else {
          System.out.println("Lose");
        }
       }
     }
   }
}


  