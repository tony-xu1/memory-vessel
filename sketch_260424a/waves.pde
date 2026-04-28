class wave {

  float waveX, waveY, waveS, waveT;

  wave() {
    waveX = random(0, 1000);
    waveY = random(650, 1000);
    waveS = random(0.2, 1.5);
    waveT = random(30, 100);
  }

  void show() {
    noFill();
    stroke(#BCD8FF);
    strokeWeight(10);
    translate(waveX, waveY);
    rotate(radians(30));
    arc(-100, 0, 100, 0, radians(0), radians(180), PIE);
  }

  void act() {
    waveY = waveY + random(0.5, 1.5);
    if (waveY == 1000 - 0.6 * waveX) {
      waveX = random(0, 1000);
      waveY = random(650, 1000);
    }
    waveT = waveT - 10;
  }
}
