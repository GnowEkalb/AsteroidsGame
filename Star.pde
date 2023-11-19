class star //note that this class does NOT extend Floater
{
  private float myX, myY;
  private float mySpeed;
  public star() {
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    mySpeed = (float)(Math.random()*3)+0.3;
  }
  public void move() {
    myX += mySpeed;
    if (myX > 1050) {
      myX = -20;
    }
  }
  public void show() {
    fill(255);
    ellipse(myX, myY, 3, 3);
  }
}
