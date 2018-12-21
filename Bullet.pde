class Bullet extends Floater{
  public Bullet(Spaceship s){
    myColor = color(204, 201, 205);
    myCenterX = myCenterY = s.getX();
    myPointDirection = s.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians);
    myDirectionY = 5 * Math.sin(dRadians);
  }
  public void show(){
    ellipse(getX(), getY(), 10 , 10);
    super.show();
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;} 
  public double getDirectionX(){return myDirectionY;} 
  public void setDirectionY(double y){myDirectionY = y;}  
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;}
}
