class Stars {
  private int myX, myY, myColor;
  public Stars() {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    myColor = (int)(Math.random()*255);
  }
  public void show() {
    fill (myColor);
    ellipse (myX, myY, 5, 5);
  }
} //test
