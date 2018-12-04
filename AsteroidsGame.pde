Spaceship s;
ArrayList<Asteroid> a = new ArrayList<Asteroid>();
ArrayList<Star> nightSky = new ArrayList<Star>();
public void setup() 
{
  size(500,500);
  s = new Spaceship();
  for(int i = 0; i < 200; i++){
    nightSky.add(new Star());
  }
  for(int i = 0; i < 15; i++){
    a.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.size(); i++){
    nightSky.get(i).show();
  }
  for(int i = 0; i < a.size(); i++){
    a.get(i).show();
    a.get(i).move();
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
