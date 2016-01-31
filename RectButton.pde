  private static RectButton prev = null;
private class RectButton {

  private int xSize, ySize, xPos, yPos,id, sid;
  private String text;

  RectButton(String text, int id, int sid, int xPos, int yPos, int xSize, int ySize) {
    this.text = text;
    this.id = id;
    this.sid = sid;
    this.xPos = xPos;
    this.yPos = yPos;
    this.xSize = xSize;
    this.ySize = ySize;
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
    prev=this;
    return(b);
  }
  
  private boolean isSolution(){
    return (prev.getsid () == this.id);
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
  
  public void hidetext(){
    fill(197,240,177);
//    textSize(20);
      //text(this.text, xPos-(textWidth(text)/2), yPos);
      
  }
  
  public int getsid () {
    return sid;
  }
  
  public RectButton getprev(){
    return prev;
  }
  
}