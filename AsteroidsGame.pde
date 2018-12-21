Spaceship s;
ArrayList<Asteroid> a = new ArrayList<Asteroid>();
ArrayList<Star> nightSky = new ArrayList<Star>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
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
  for(int i = 0; i < bullets.size(); i++){
    bullets.add(new Bullet(s));  
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.size(); i++){
    nightSky.get(i).show();
  }
  for(int i = 0; i < a.size(); i++){
    a.get(i).move();
    a.get(i).show();
    float d = dist(s.getX(), s.getY(), a.get(i).getX(), a.get(i).getY());
    if (d < 10)
      a.remove(i);
  }
  s.show();
  s.move();
  for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).show();
    bullets.get(i).move();
    if(bullets.get(i).getX() == width || bullets.get(i).getY() == height || bullets.get(i).getY() == 0 || bullets.get(i).getX() == 0){
      bullets.remove(i);
      i--;
    }
    for(int j = 0; j < bullets.size(); j++){
      float bulletDist = dist(bullets.get(j).getX(), bullets.get(j).getY(), a.get(j).getX(), a.get(j).getY());
      if (bulletDist < 10){
        bullets.remove(j);
        a.remove(j);
      }
      break;
    }
   }
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
  if(key == 'e'){
    bullets.add(new Bullet(s)); 
  }
}
