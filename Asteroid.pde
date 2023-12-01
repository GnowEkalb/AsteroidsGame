class Asteroid extends Floater {
  protected double rotSpeed;
  protected int size;
  public Asteroid(int Asize) {
    corners = 6;
    size = Asize;
    xCorners = new int [] {10*Asize,5*Asize,-5*Asize,-10*Asize,-5*Asize,5*Asize};
    yCorners = new int [] {0,8*Asize,8*Asize,0,-8*Asize,-8*Asize};
    myColor = 255;
    myCenterX = 0;
    myCenterY = 0;
    myXspeed = (Math.random()*5)-2.5;
    myYspeed = (Math.random()*5)-2.5;
    myPointDirection = 0;   
    rotSpeed = (Math.random()*8)-4;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public void show(){
    super.show();
    
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public int getSize(){
    return size;  
  }
}
