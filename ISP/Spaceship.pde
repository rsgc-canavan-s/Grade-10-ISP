class Spaceship {
  void Spaceship() {
  }
  void drawAt(int x, int y) {

    fill(#71C406);
    beginShape();
    vertex(x + 490, y + 650);
    vertex(x + 510, y + 650);
    vertex(x + 490, y + 635); 
    vertex(x + 510, y + 635); 
    vertex(x + 495, y + 630); 
    vertex(x + 505, y + 630);
    vertex(x + 490, y + 650);
    endShape(CLOSE);
  }
}