//global
int spaceShipX = 0;
int spaceShipY = 0;
int FWAM = 1;
int FWAMD = 1;
//this boolean makes it possible for my First_Wave_Alien to move right as long as I make the "right = true"
boolean right = true;
//this must be up here becasue this is an area where this is accessible anywhere in a code
Spaceship ship;

First_Wave_Alien FWA;
First_Wave_Alien FWA2;
First_Wave_Alien FWA3;
Bullet bullet;
boolean fired = false;

void setup() {

  //creating canvas
  size(1000, 700);

  // create the spaceship object
  ship = new Spaceship();
  FWA = new First_Wave_Alien();
  FWA2 = new First_Wave_Alien();
  FWA3 = new First_Wave_Alien();
}

void draw() {
  background(170);
  ship.drawAt(spaceShipX, spaceShipY);
  fill(255);
  FWA.drawAt(FWAM + 100, FWAMD + 100);
  FWA2.drawAt(FWAM + 200, FWAMD + 100);
  FWA3.drawAt(FWAM + 300, FWAMD + 100);
  if (fired == true) {
    bullet.update();
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
      fired = true;
      bullet = new Bullet(spaceShipX + 500, spaceShipY + 600, 2, 2); 

      //println("k");
    }
  }
}