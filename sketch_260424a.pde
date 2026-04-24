//memory vessel project
float offset = 40;
float x = random(0, 1000);
float y = random(600, 1000);

void setup() {
  size(1000, 1000);
  background(#C4F3FF);
}

void draw() {
  noStroke();
  fill(#E8E2B7);
  triangle(0, 600, 0, 1000, 1000, 1000);
  for(int i = 0; i < 1000; i = i + 20){
    fill(0);
    circle(x, x + y, 1);
  }
  palmTree();
}

void palmTree() {
  fill(#211C0E);
  arc(50, 400, 150, 500, radians(140), radians(300), CHORD);
}


void wave() {
}
