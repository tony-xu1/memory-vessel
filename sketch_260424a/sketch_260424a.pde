//memory vessel project
float r = 0;
boolean direction = true;

int fly;

cloud[] myCloud;
int n = 10;

wave[] myWave;
int m = 15;

PImage tornado;

void setup() {
  size(1000, 1000);
  tornado = loadImage("tornado.png");
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


  //tornado-----------------------------------------
  scale(0.2);
  image(tornado, fly, 100);
  fly = fly + 10;
  if (fly > 5100) {
    fly = -100;
  }
  scale(5);
  palmTree(255);
}

void palmTree(int o) {
  noStroke();
  fill(#71490B, o);
  translate(-15, 555);
  rotate(radians(r));
  arc(60, -155, 150, 500, radians(140), radians(300), CHORD);
  leaf(370, -360, 0);
  leaf(-20, 180, 30);
  leaf(-150, 0, 0);
  leaf(-50, -90, -40);
  fill(#524B25);
  circle(-200, 20, 50);
  circle(-170, 20, 50);
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
}



void leaf(int x, int y, int angle) {
  noStroke();
  fill(#397136);
  translate(x, y);
  rotate(radians(angle));
  arc(-200, 0, 250, 120, radians(160), radians(360), PIE);
}
