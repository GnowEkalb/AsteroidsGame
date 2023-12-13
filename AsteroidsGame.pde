ship bob = new ship();
star[] sky = new star[150];
ArrayList <Asteroid> AList = new ArrayList <Asteroid>();
ArrayList <bullet> BList = new ArrayList <bullet>();
protected int score = 0;
protected int highScore = 0;
public void setup() 
{
  background(0);
  size(1000,1000);
  for (int i = 0; i < sky.length; i++){
    sky[i] = new star();
  }
  for (int i = 0; i<= 15;i++){
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
     reset();
    }
  }
  for (int i = 0; i < BList.size(); i++){
    BList.get(i).show();
    BList.get(i).move();
    if (BList.get(i).getCenterX() > 1030 || BList.get(i).getCenterX() < -20 || BList.get(i).getCenterY() > 1020 || BList.get(i).getCenterY() < -20){
      BList.remove(i);
    }
  }
  
  for (int a = 0; a < AList.size(); a++){
    for (int b = 0; b < BList.size(); b++){
      float distance = dist((float)BList.get(b).getCenterX(), (float)BList.get(b).getCenterY(),(float)AList.get(a).getCenterX(), (float)AList.get(a).getCenterY());
      if (distance < 10 * AList.get(a).getSize()){
        AList.remove(a);
        BList.remove(b);
        AList.add(new Asteroid((int)(Math.random()*6+2)));
        score +=400;
        if (score > highScore){
          highScore = score;        
        }
      }
    }
  }
  bob.show();
  bob.move();
  fill(0);
  textSize(30);
  for(int x = -1; x < 2; x++){
    for(int y = -1; y < 2; y++){
       text("Score:" + score, 20+x,30+y);
    }
    text("Score:"+ score, 20+x,30);
    text("Score:" + score, 20,30+x);
  }
  fill(255);
  text("Score:" + score, 20,30);
  
  fill(0);
  for(int x = -1; x < 2; x++){
    for(int y = -1; y < 2; y++){
       text("High Score:" + highScore, 400+x,30+y);
    }
    text("High Score:"+ highScore, 400+x,30);
    text("High Score:" + highScore, 400,30+x);
  }
  fill(255);
  text("High Score:" + highScore, 400,30);
}

protected boolean keyW = false;
protected boolean keyS = false;
protected boolean keyA = false;
protected boolean keyD = false;
protected boolean canShoot = true;

public void keyPressed(){
  if (key == 'w' || key == 'W'){
    keyW = true;
  }
  if (key == 's' || key == 'S'){
    keyS = true;
  }
  if (key == 'd' || key == 'D'){
    keyD = true;
  }
  if (key == 'a' || key == 'A'){
    keyA = true;
  }
  if ((key == 'q' || key == 'Q') && score >= 1000){
    bob.hyperSpace();
    score-= 1000;
  }
  if (key == ' '){
    BList.add(new bullet(bob));
    score-= 200;
    if (score < 0){
      score = 0;
    }
    canShoot = false;
  }
  
  if (keyW == true){
    bob.accelerate(0.3);
  }
  if (keyS == true){
    bob.accelerate(-0.3);
  }
  if (keyA == true){
    bob.turn(-7);
  }
  if (keyD == true){
    bob.turn(7);
  }
  if (key == 'r' || key == 'R'){
    reset();
  }
}

public void keyReleased(){
  if (key == 'w' || key=='W'){
    keyW = false;
  }
  if (key == 's' || key=='S'){
    keyS = false;
  }
  if (key == 'a' || key=='A'){
    keyA = false;
  }
  if (key == 'd' || key=='D'){
    keyD = false;
  }
}

public void reset(){
  for (int i = AList.size()-1; i >= 0 ;i--){
    AList.remove(i);
  }
  bob.setCenterX(500);
  bob.setCenterY(500);
  bob.setXspeed(0);
  bob.setYspeed(0);
  bob.setPointDirection(0);
  score = 0;
  for (int i = 0; i<= 15;i++){
    AList.add(new Asteroid((int)(Math.random()*6+2)));
  }
}




