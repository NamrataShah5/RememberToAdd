static RectButton prev=null;
  
private class RectButton {

  private int xSize, ySize, xPos, yPos,id, sid;
  private String text;
  private boolean pairFound;
  
   

  RectButton(String text, int id, int sid, int xPos, int yPos, int xSize, int ySize) {
    this.text = text;
    this.id = id;
    this.sid = sid;
    this.xPos = xPos;
    this.yPos = yPos;
    this.xSize = xSize;
    this.ySize = ySize;
    this.pairFound = false;
  }

  public void display() {
    fill(197,240,177);//color
    rect(xPos, yPos, xSize, ySize, 25);
    fill(197,240,177);//color 2 
  }

  public boolean[] isPressed() {
    boolean[] b = new boolean [2];
    b [0] = isOver() && mousePressed;
    b [1] = isSolution ();
    return(b);
  }
  
  private boolean isSolution(){
    if (prev == null) return false;
    return (prev.getsid() == this.id);
  }
 

  private boolean isOver() {
    return (mouseX > xPos-xSize/2 && mouseX < xPos+xSize/2 && 
      mouseY > yPos-ySize/2 && mouseY < yPos+ySize/2);
  }
  
  public String gettxt () {
    return text;
  }
  
  public void showtext () {
    fill(0);
    textSize(20);
    text(text, xPos-(textWidth(text)/2), yPos);
  }
  

  
  public int getsid () {
    return sid;
  }
  
  public RectButton getprev(){
    return prev;
  }
  
  public boolean wasClicked(){
    boolean sol = false;
    sol = isSolution();
    if(sol){
      prev.pairFound=true;
      this.pairFound=true;
    }    
    prev=this;
    return sol;
  }    
  
  public boolean getPairFound(){
    return this.pairFound;
  }


  public String toString(){
    return("BUTTON:- " + id);
  }
  
}