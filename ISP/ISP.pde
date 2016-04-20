//global
int spaceShipX = 0;
int spaceShipY = 0;
int FWAM = 1;
int FWAMD = 1;
int bulletX = spaceShipX + 498;
int bulletY = spaceShipY + 590;
int currentBullet = 0;
Bullet bullets[] = new Bullet[5];
//this boolean makes it possible for my First_Wave_Alien to move right as long as I make the "right = true"
boolean right = true;
//this must be up here becasue this is an area where this is accessible anywhere in a code
Spaceship ship;

First_Wave_Alien FWA;
First_Wave_Alien FWA2;
First_Wave_Alien FWA3;
Bullet bullet;
boolean fired = false;
boolean alive = true;

void setup() {

  //creating canvas
  size(1000, 700);

  // create the spaceship object
  ship = new Spaceship();
  FWA = new First_Wave_Alien();
  FWA2 = new First_Wave_Alien();
  FWA3 = new First_Wave_Alien();
  //initialising all of the instances of the Bullet class
  for (int counter = 0; counter < bullet.length; counter += 1) {
    
}

void draw() {
  background(170);
  ship.drawAt(spaceShipX, spaceShipY);
  fill(255);
  FWA.drawAt(FWAM + 100, FWAMD + 100);{
  }
  FWA2.drawAt(FWAM + 200, FWAMD + 100);
  FWA3.drawAt(FWAM + 300, FWAMD + 100);


if ((spaceShipY + 590) < FWAMD + 70 && (spaceShipX + 498) < FWAM + 70 && (spaceShipX + 498) > FWAM) { 
 boolean alive = false;
}

  if (right)FWAM = FWAM + 1;
  else FWAM = FWAM - 1;

  if (FWAM + 500 > width) {
    FWAMD +=  50;
    FWAM = + 500;
    right = false;
  } else if (FWAM + 500 < 500) {
    FWAMD +=  50;
    FWAM = + 100;
    right = true;
  }
}

//enables the ship to move
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      //this subtaction makes the spaceship move left
      spaceShipX -= 10;
    } else if (keyCode == RIGHT) {
      //this addition makes the spaceship move left
      spaceShipX += 10;
    }
  } else {
    if (key == ' ')
    {
     bullets += 1;
      fired = true;
      bullet[bullets] = new Bullet(spaceShipX + 498, spaceShipY + 590, 1, 1); 
    }
  }
}