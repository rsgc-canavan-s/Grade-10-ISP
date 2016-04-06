//global
int spaceShipX = 500;
int spaceShipY = 650;
//this must be up here becasue this is an area where this is accessible anywhere in a code
Spaceship ship = new Spaceship();

void setup() {

  //creating canvas
  size(1000, 700);
}

void draw() {
  ship.drawAt(spaceShipX, spaceShipY);
}
//enables the ship to move
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      spaceShipX ++;
    } else if (keyCode == RIGHT) {
      spaceShipY --;
    }
  }
}