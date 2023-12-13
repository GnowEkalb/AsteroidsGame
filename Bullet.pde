class bullet extends Floater{
  public bullet(ship theShip){
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(10);
  }
  public void show(){
    fill(255);
    ellipse((float)myCenterX,(float)myCenterY,8,8);
  }
  public void move(){
    super.move();
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }  
  public double getPointDirection(){
    return myPointDirection;
  }
}
