class RectButton {
  private int xSize, ySize, xPos, yPos,id;
  private String text;

  RectButton(String text, int id,int xPos, int yPos, int xSize, int ySize) {
    this.text = text;
    this.id = id;
    this.xPos = xPos;
    this.yPos = yPos;
    this.xSize = xSize;
    this.ySize = ySize;
  }

  public void display() {
    fill(197,240,177);//color
    rect(xPos, yPos, xSize, ySize, 25);
    fill(134);//color 2
  }

  public boolean isPressed() {
    return(isOver() && mousePressed);
  }

  private boolean isOver() {
    return (mouseX > xPos-xSize/2 && mouseX < xPos+xSize/2 && 
      mouseY > yPos-ySize/2 && mouseY < yPos+ySize/2);
  }
  
  public String gettxt () {
    return text;
  }
  
  public void showtext () {
    textSize(20);
    text(text, xPos-(textWidth(text)/2), yPos);
  }
}