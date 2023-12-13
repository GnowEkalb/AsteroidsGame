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
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }  
  public double getPointDirection(){
    return myPointDirection;
  }
  public void setCenterX(double n){
    myCenterX = n;
  }
  public void setCenterY(double n){
    myCenterY = n;
  }
  public void setXspeed(double n){
    myXspeed = n;
  }
  public void setYspeed(double n){
    myYspeed = n;
  }
  public void setPointDirection(double n){
    myPointDirection = n;
  }
}
