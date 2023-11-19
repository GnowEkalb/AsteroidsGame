
class ship extends Floater{
  public ship(){
    corners = 4;
    xCorners = new int [] {-8, 16, -8 ,-2};
    yCorners = new int [] {-8, 0 , 8, 0};
    myColor = 255;
    myCenterX = 500;
    myCenterY = 500;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperSpace(){
    myXspeed = 0;
    myYspeed = 0;
    bob.myPointDirection = Math.random()*360;
    bob.myCenterX = Math.random()*1000;
    bob.myCenterY = Math.random()*1000;
  }
}

