Spaceship s;
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500,500);
  s = new Spaceship();
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  s.show();
  s.move();
}

public void keyPressed(){
  if(key == ' '){
    s.setPointDirection((int)(Math.random()*360));
    s.setX((int)(Math.random()*500));
    s.setY((int)(Math.random()*500));
  }
  if(key == 'w'){
    s.accelerate(1.0);
  }
  if(key == 's'){
    s.accelerate(-1.0);
  }
  if(key == 'a'){
    s.turn(-20);
  }
  if(key == 'd'){
    s.turn(20);
  }
}
