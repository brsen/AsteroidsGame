Spaceship[] fleet = new Spaceship[6];
Star[] stars = new Star[200];
boolean isUP, isDOWN, isLEFT, isRIGHT;
public void setup() 
{
  size(500,500);
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }

  fleet[0] = new Spaceship(220, 250);
  fleet[1] = new Spaceship(250, 250);
  fleet[2] = new Spaceship(280, 250);
  fleet[3] = new Spaceship(235, 210);
  fleet[4] = new Spaceship(265, 210);
  fleet[5] = new Spaceship(250, 170);
  
}

public void draw() 
{
  fill(0, 20);
  rect(0,0,width,height);
 
  if (isLEFT) {
    for(Spaceship i : fleet)
      i.turn(-3);
  }
  if (isRIGHT) { 
    for(Spaceship i : fleet)
      i.turn(3);
  }
  
  if (isUP) {
    for(Spaceship i : fleet)
      i.accelerate(0.2);
  }
  if (isDOWN) {
    for(Spaceship i : fleet)
      i.stoop();
  }
  
  for(Spaceship i : fleet) {
    if(i.getXspeed() > 5) {
      i.setXspeed(5);
    }
    if(i.getXspeed() < -5)
      i.setXspeed(-5);
    if(i.getYspeed() < -5)
      i.setYspeed(-5);
    if(i.getYspeed() > 5) {
      i.setYspeed(5);
    }
  }
  
 for(Spaceship i : fleet) {
    i.move();
    i.show();
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
    double newX = Math.random() * 400;
    double newY = Math.random() * 400;
    double newPointDirection = Math.random() * 360;
    for(Spaceship i : fleet)
      i.hyperspace(newX, newY, newPointDirection);
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
