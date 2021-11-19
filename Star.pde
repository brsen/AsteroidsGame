class Star//note that this class does NOT extend Floater
{
  private float myX, myY;
  private int myColor;
  public Star() {
    myX = (int)(Math.random() * width);
    myY = (int)(Math.random() * height);
    myColor = color((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
  }
  public void move() {
  }
  public void show() {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 5, 5);
  }
}
