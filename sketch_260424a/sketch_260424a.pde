//memory vessel project
float r = 0;
boolean direction = true;


cloud[] myCloud;
int n = 7;

wave[] myWave;
int m = 10;

void setup() {
  size(1000, 1000);
  myCloud = new cloud[n];
  int i = 0;
  while (i < n) {
    myCloud[i] = new cloud();
    i++;
  }
  myWave = new wave[m];
  int l = 0;
  while (l < m) {
    myWave[l] = new wave();
    l++;
  }
}

void draw() {
  background(#5DA1FF);
  noStroke();
  fill(#E8E2B7);
  triangle(0, 600, 0, 1000, 1000, 1000);
  fill(#C4F3FF);
  rect(0, 0, 1000, 500);

  //sunnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
  fill(#FFFA5D);
  circle(1000, 0, 300);

  // cloud============================
  int i = 0;
  while (i < n) {
    myCloud[i].act();
    myCloud[i].show();
    i++;
  }

  //wave=====================
  int l = 0;
  while (l < m) {
    myWave[l].act();
    myWave[l].show();
    l++;
  }

  palmTree(255);
}

void palmTree(int o) {
  fill(#71490B, o);
  pushMatrix();
  translate(-15, 555);
  rotate(radians(r));
  arc(60, -155, 150, 500, radians(140), radians(300), CHORD);
  if (r >= 5) {
    direction = false;
  }
  if (r <= -5) {
    direction = true;
  }
  if (direction == true) {
    r = r + 0.05;
  }
  if (direction == false) {
    r = r - 0.05;
  }
  popMatrix();
}



void leaf(int x, int y, int r) {
}
