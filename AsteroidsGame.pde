ship bob = new ship();
star[] sky = new star[150];
ArrayList <Asteroid> AList = new ArrayList <Asteroid>();
public void setup() 
{
  background(0);
  size(1000,1000);
  for (int i = 0; i < sky.length; i++){
    sky[i] = new star();
  }
  for (int i = 0; i<= 25;i++){
    AList.add(new Asteroid((int)(Math.random()*6+2)));
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
  for (int i = 0; i< AList.size();i++){
    AList.get(i).move();
    AList.get(i).show();
    float distance = dist((float)bob.getCenterX(),(float)bob.getCenterY(),(float)AList.get(i).getCenterX(), (float)AList.get(i).getCenterY());
    if (distance < 10 * AList.get(i).getSize()){
     AList.remove(i);
    }
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
