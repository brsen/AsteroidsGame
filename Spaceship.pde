class Spaceship extends Floater  
{   
    private double myOffsetX, myOffsetY;
    //your code here
    public Spaceship(double x, double y) {
      corners = 3;
      myColor = color(255,0,0);
      myCenterX = x;
      myCenterY = y;
      myOffsetX = x-250;
      myOffsetY = y-250;
      myXspeed = myYspeed = 0;
      myPointDirection = 0;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
    }
    
    
    public void stoop() {
      myXspeed = 0;
      myYspeed = 0;
    }
    
    public void hyperspace() {
      stoop();
      myCenterX = Math.random() * 400;
      myCenterY = Math.random() * 400;
      myPointDirection = Math.random() * 360;
    }
    
     public float getX() {
       return (float)myCenterX; }
     public float getY() {
       return (float)myCenterY; }
    public double getXspeed() { return myXspeed;}
    public void setXspeed(double x) { myXspeed = x; }
    public double getYspeed() { return myYspeed; }
    public void setYspeed(double y) { myYspeed = y; }
}
