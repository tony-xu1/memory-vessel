class wave {

  float waveX, waveY, waveS, waveT;

  wave() {
    waveX = random(0, 1300);
    waveY = random(600, 800);
    waveS = random(0.1, 2);
    waveT = random(70, 100);
  }

  void show() {
    noFill();
    stroke(#BCD8FF, waveT);
    strokeWeight(7);
    pushMatrix();
    translate(waveX, waveY);
    rotate(radians(21));
    arc(-150, 0, 150, 10, radians(30), radians(180), CHORD);
    popMatrix();
  }

  void act() {
    waveX = waveX - random(0.5, 1.5);
    waveY = waveY + random(0.5, 1.5);
    waveT = waveT - 1;
    if (waveY >= 0.4 * waveX + 600 || waveT == 0) {
      waveX = random(0, 1300);
      waveY = random(600, 700);
      waveT = random(70, 100);
    }
  }
}
