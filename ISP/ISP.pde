//global
int spaceShipX = 0;
int spaceShipY = 0;
int First_Wave_Alien_Move = 1;
int First_Wave_Alien_Move_Down = 1;
float bulletX = spaceShipX + 498;
float bulletY = spaceShipY - 1;
int currentBullet = 0;
int gameState = 0;
int textPosY = 700;
//creating pace in memory for bullets
//I can put as may bullets on the screen as I want
Bullet bullets[] = new Bullet[10];

//this boolean makes it possible for my First_Wave_Alien to move right as long as I make the "right = true"
boolean right = true;
boolean hit = false;
//this must be up here becasue this is an area where this is accessible anywhere in a code
Spaceship ship;
//creates space in memory for the aliens
//this is an array for my aliens, I am now able to draw however many I want
First_Wave_Alien FWA[] = new First_Wave_Alien[5];

Bullet bullet;
boolean fired = false;



void setup() {

  //creating canvas
  size(1000, 700);
  background(0);
  // create the spaceship object
  ship = new Spaceship();
  //this is where I create the alien
  for (int counter = 0; counter < FWA.length; counter += 1) {
    FWA[counter] = new First_Wave_Alien();
  }

  //initialising all of the instances of the Bullet class
  for (int counter = 0; counter < bullets.length; counter += 1) {
    bullets[counter] = new Bullet(-50, -50, 2, 2);
  }
}
void draw() {
  //gameState is the integer that allows for different stages in the game. Ex. Start screen, game play, game over, etc.
  if (gameState == 0) {
    background(0);
    //start screen
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Press 's' to start protecting the universe", 500, textPosY);
    textSize(50);
    fill(255);
    text("SPACE INAVDERS", 500, textPosY - 250);
    if(textPosY > 350){
    textPosY -= 3;
    }
    else if(textPosY == 350){
    textPosY = 0;
    }
    if (keyPressed) {
      if (key == 's') {
        gameState ++;
      }
    }
  }

  if (gameState == 1) {
    background(0);
    ship.drawAt(spaceShipX, spaceShipY);
    fill(255);
    //drawing however many aliens are stated in the counter
    for (int counter = 0; counter < FWA.length; counter += 1) {
      FWA[counter].update((100)*counter + First_Wave_Alien_Move, First_Wave_Alien_Move_Down);
    }
    //allows only however many bullets as the counter number
    for (int counter = 0; counter < bullets.length; counter += 1) {
      //this is where I am drawing the bullets
      bullets[counter].update(FWA);
    }
    //code for the alien's movement
    if (right)First_Wave_Alien_Move = First_Wave_Alien_Move + 2;
    else First_Wave_Alien_Move = First_Wave_Alien_Move - 2;

    if (First_Wave_Alien_Move + 500 > width) {
      First_Wave_Alien_Move_Down +=  50;
      First_Wave_Alien_Move = + 500;
      right = false;
    } else if (First_Wave_Alien_Move + 500 < 500) {
      First_Wave_Alien_Move_Down +=  50;
      right = true;
    }
  }
}



//enables the ship to move
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      //this subtaction makes the spaceship move left
      spaceShipX -= 10;
    } else if (keyCode == RIGHT) {
      //this addition makes the spaceship move right
      spaceShipX += 10;
    }
  } else {
    if (key == ' ')
    {
      //this adds one to the bullet counter
      currentBullet += 1;
      //so i am able to re-use bullets, i have to reset the number back to zero with this if statement
      if (currentBullet > bullets.length - 1) {
        currentBullet = 0;
      }
      fired = true;
      bullets[currentBullet].makeActive(spaceShipX + 498, spaceShipY + 590);
    }
  }
}