ship bob = new ship();
star[] sky = new star[150];
public void setup() 
{
  background(0);
  size(1000,1000);
  for (int i = 0; i < sky.length; i++){
    sky[i] = new star();
  }
}
public void draw() 
{
  fill(0);
  rect(0,0,1000,1000);
  for (int i = 0; i < sky.length; i++){
    sky[i].show();
    sky[i].move();
  }
  bob.show();
  bob.move();
}
public void keyPressed(){
  if (key == 'w' || key == 'W'){
  bob.accelerate(0.3);
  }
  if (key == 's' || key == 'S'){
  bob.accelerate(-0.3);
  }
  if (key == 'd' || key == 'D'){
  bob.turn(7);
  }
  if (key == 'a' || key == 'A'){
  bob.turn(-7);
  }
  if (key == 'q' || key == 'Q'){
    bob.hyperSpace();
  }
}
