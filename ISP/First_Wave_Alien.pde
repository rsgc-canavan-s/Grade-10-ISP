class First_Wave_Alien {
  int x;
  int y;
  void First_Wave_Alien() {
  }
  void drawAt(int _x, int _y) {
    x = _x;
    y = _y;
    beginShape();
    vertex(_x + 20, _y + 20);
    vertex(_x + 40, _y + 20);
    vertex(_x + 40, _y + 10);
    vertex(_x + 60, _y + 10);
    vertex(_x + 60, _y + 20);
    vertex(_x + 80, _y + 20);
    vertex(_x + 80, _y + 30);
    vertex(_x + 90, _y + 30);
    vertex(_x + 90, _y + 50);
    vertex(_x + 75, _y + 50);
    vertex(_x + 75, _y + 60);
    vertex(_x + 80, _y + 60);
    vertex(_x + 80, _y + 70);
    vertex(_x + 70, _y + 70);
    vertex(_x + 70, _y + 80);
    vertex(_x + 60, _y + 80);
    vertex(_x + 60, _y + 70);
    vertex(_x + 70, _y + 70);
    vertex(_x + 70, _y + 60);
    vertex(_x + 57, _y + 60);
    vertex(_x + 57, _y + 70);
    vertex(_x + 43, _y + 70);
    vertex(_x + 43, _y + 60);
    vertex(_x + 30, _y + 60);
    vertex(_x + 30, _y + 70);
    vertex(_x + 40, _y + 70);
    vertex(_x + 40, _y + 80);
    vertex(_x + 30, _y + 80);
    vertex(_x + 30, _y + 70);
    vertex(_x + 20, _y + 70);
    vertex(_x + 20, _y + 60);
    vertex(_x + 27, _y + 60);
    vertex(_x + 27, _y + 50);
    vertex(_x + 10, _y + 50);
    vertex(_x + 10, _y + 30);
    vertex(_x + 20, _y + 30);
    vertex(_x + 20, _y + 20);
    endShape(CLOSE);
  }
  int getX(){ 
    return x;
  }
  int getY() {
    return Y;
  }
}