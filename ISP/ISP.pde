//global
int spaceShipX = 0;
int spaceShipY = 0;
int FWAM = 1;
int FWAMD = 1;
int bulletX = spaceShipX + 498;
int bulletY = spaceShipY + 620;
int currentBullet = 0;
Bullet bullets[] = new Bullet[1];
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
  for (int counter = 0; counter < bullets.length; counter += 1) {
    bullets[counter] = new Bullet(-50, -50, 2, 2);
  }
}

void draw() {
  background(170);
  ship.drawAt(spaceShipX, spaceShipY);
  fill(255);
  FWA.drawAt(FWAM + 100, FWAMD + 100);
  FWA2.drawAt(FWAM + 200, FWAMD + 100);
  FWA3.drawAt(FWAM + 300, FWAMD + 100);
  
  for (int counter = 0; counter < bullets.length; counter += 1) {
    //this is where I am drawing the bullets
    bullets[counter].update(FWA);
  }

  if (bulletY < FWAMD + 100 && bulletX < FWAM + 170 && bulletX > FWAM) { 
    alive = false;
    println("faggot");
  }
  //if (right)FWAM = FWAM + 1;
  //else FWAM = FWAM - 1;

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
      //this adds one to the bullet counter
      currentBullet += 1;
      //so i am able to re-use bullets, i have to reset the number back to zero with this if statement
      if (currentBullet > bullets.length - 1){
        currentBullet = 0;
      }

      fired = true;
      bullets[currentBullet].makeActive(spaceShipX + 498, spaceShipY + 590);
    }
  }
}