class Asteroid extends Floater {
  protected double myRotSpeed;
  public Asteroid() {
      corners = 4;
      myColor = color(200,200,200);
      myCenterX = Math.random() * 500;
      myCenterY = Math.random() * 500;
      myXspeed = myYspeed = Math.random() * 5 - 2;
      myPointDirection = Math.random() * 360;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -10;
      yCorners[0] = -10;
      xCorners[1] = 10;
      yCorners[1] = -10;
      xCorners[2] = 10;
      yCorners[2] = 10;
      xCorners[3] = -10;
      yCorners[3] = 10;
      myRotSpeed = Math.random() * 3 + 1;
  }
  
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed
      myCenterX += myXspeed;    
      myCenterY += myYspeed;    
    
    this.turn(myRotSpeed);
    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public float getX() {
    return (float)myCenterX; }
   public float getY() {
     return  (float)myCenterY; }
}
