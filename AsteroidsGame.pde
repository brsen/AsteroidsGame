Spaceship ship = new Spaceship(250, 250);
Star[] stars = new Star[200];
ArrayList <Asteroid> roids = new ArrayList <Asteroid>();
boolean isUP, isDOWN, isLEFT, isRIGHT;
public void setup() 
{
  size(500,500);
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  
  for(int i = 0; i < 10; i++)
    roids.add(new Asteroid());
  
}

public void draw() 
{
  fill(0);
  rect(0,0,width,height);
 
  if (isLEFT) {
    ship.turn(-3);
  }
  if (isRIGHT) { 
      ship.turn(3);
  }
  
  if (isUP) {
      ship.accelerate(0.2);
  }
  if (isDOWN) {
      ship.stoop();
  }
  
  if(ship.getXspeed() > 3) {
    ship.setXspeed(3);
  }
  if(ship.getXspeed() < -3)
    ship.setXspeed(-3);
  if(ship.getYspeed() < -3)
    ship.setYspeed(-3);
  if(ship.getYspeed() > 3) {
    ship.setYspeed(3);
  }
  
    ship.move();
    ship.show();
 
 for (int i = 0; i < roids.size(); i++) {
   roids.get(i).move();
     while (dist(roids.get(i).getX(), roids.get(i).getY(), ship.getX(), ship.getY()) < 25) {
       roids.set(i, new Asteroid());
     }
   roids.get(i).show();
 }
  
  for(Star i : stars) {
    i.show();
  }
}

public void keyPressed() {
  if(keyCode == 87) {
    isUP = true;
  }
  if(keyCode == 83) {
    isDOWN = true;
  }
  if(keyCode == 65) {
    isLEFT = true;
  }
  if(keyCode == 68) {
    isRIGHT = true;
  }
  if(keyCode == 72) {
      ship.hyperspace();
  }
}

public void keyReleased() {
  if(keyCode == 87) {
    isUP = false;
  }
  if(keyCode == 83) {
    isDOWN = false;
  }
  if(keyCode == 65) {
    isLEFT = false;
  }
  if(keyCode == 68) {
    isRIGHT = false;
  }
}
