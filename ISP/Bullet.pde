class Bullet {
  int x;
  float y;
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
  void update() {
    if (isActive == true) {

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