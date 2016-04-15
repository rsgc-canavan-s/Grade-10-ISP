class Bullet {
  int x;
  float y;
  float a;
  float b;
  Bullet(int _x, int _y, float _a, float _b) { 
    x = _x;
    y = _y;
    a = _a;
    b = _b;
  }
  void update() {
    fill(255, 0, 0);
    y = y - 2;
    rect(x + (a), y + (b), 3 * a, 10 * b);
  }
}