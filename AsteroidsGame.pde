Spaceship ship = new Spaceship();
Star[] stars = new Star[200];
boolean isUP, isDOWN, isLEFT, isRIGHT;
public void setup() 
{
  size(500,500);
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}
public void draw() 
{
  fill(0, 20);
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
  
  if(ship.getXspeed() > 5) {
    ship.setXspeed(5);
  }
  if(ship.getXspeed() < -5)
    ship.setXspeed(-5);
  if(ship.getYspeed() < -5)
    ship.setYspeed(-5);
  if(ship.getYspeed() > 5) {
    ship.setYspeed(5);
  }
  ship.move();
  ship.show();
  
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
