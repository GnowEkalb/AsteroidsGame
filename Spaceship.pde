class ship extends Floater {
  public ship() {
    corners = 4;
    xCorners = new int [] {-12, 24, -12, -3};
    yCorners = new int [] {-12, 0, 12, 0};
    myColor = 255;
    myCenterX = 500;
    myCenterY = 500;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperSpace() {
    myXspeed = 0;
    myYspeed = 0;
    bob.myPointDirection = Math.random()*360;
    bob.myCenterX = Math.random()*1000;
    bob.myCenterY = Math.random()*1000;
  }
  public void move(){
  super.move();
    if (myXspeed > 0){
    myXspeed/=1.01;
    }
    if (myYspeed > 0){
      myYspeed/=1.01;
    }
    if (myXspeed < 0){
      myXspeed/=1.01;
    }
    if (myYspeed < 0){
      myYspeed/=1.01;
    }
  }
  public void accelerate (double dAmount)   
  {          
     super.accelerate(dAmount);
      if (myXspeed >= 5){
      myXspeed = 5;    
    }
    if (myYspeed >= 5){
      myYspeed = 5;    
    }
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
