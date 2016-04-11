class Spaceship {
  void Spaceship() {
  }
  void drawAt(int x, int y) {

    fill(0);
    beginShape();
    vertex(x + 470, y + 620);
    vertex(x + 490, y + 620);
    vertex(x + 500, y + 600);
    vertex(x + 510, y + 620);
    vertex(x + 530, y + 620);
    vertex(x + 530, y + 655);
    vertex(x + 470, y + 655);
    vertex(x + 470, y + 620);
    endShape(CLOSE);
  }
}