class Asteroid extends Floater{
  private int rotSpeed;
  public Asteroid(){
    rotSpeed = (int)(Math.random()*21) - 10;
    corners = 6;
    int[] xS = {-11, 7, 13, 6, -11, -5};
    int[] yS = {-8, -8, 0, 10, 8, 0};
    xCorners = xS;
    yCorners = yS;
    myColor = color(204, 204, 204);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = -50;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
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
