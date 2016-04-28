class Bullet {
  int x;
  int y;
  float a;
  float b;
  boolean isActive;
  Bullet(int _x, int _y, float _a, float _b) { 
    x = _x;
    y = _y;
    a = _a;
    b = _b;
    isActive = false;
  }

  //update is used to draw the bullet
  void update(First_Wave_Alien alien) {
    if (isActive == true) {
      println(alien.getX());
      println(alien.getY());

      // detect hit with alien
      if (y < alien.getY() + 100 && x < alien.getX() + 70 && x > alien.getX()) {
        println ("hit");
        isActive = false;
        alien.makeInactive();
      }

      //draw the bullet
      fill(255, 0, 0);
      y = y - 2;
      rect(x + (a), y + (b), 3 * a, 10 * b);
    }
  }

  //purpose of this method is to make this bullet active
  void makeActive(int _x, int _y) {
    x = _x;
    y = _y;
    isActive = true;
  }
}
//gathering the x and y coordiantes of the First_Wave_Alien
int getX() { 
  return X;
}
int getY() {
  return Y;
}