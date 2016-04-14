class Bullet {
  int x;
  int y;
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
    y = y - 1;
    rect(x + (500 * a), y + (650 * b), 3 * a, 10 * b);
  }
}