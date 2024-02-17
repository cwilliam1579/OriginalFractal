void setup() {
  size(750, 750);
  background(0, 0, 0);
}

void draw() {
  myFractal(width/2, height/2, 1200);
  myFractal2(width/2, height/2, 1200);
}

void myFractal(float x, float y, float siz) {
  noFill();
  stroke(0, 255, 0);
  ellipse(x, y, siz, siz);

  if (siz > 20) {
    for (int i = 2; i <= 2; i *= 2) {
      myFractal(x - siz/i, y, siz/i);
      myFractal(x + siz/i, y, siz/i);
      myFractal(x, y - siz/i, siz/i);
      myFractal(x, y + siz/i, siz/i);
    }
  }
}

void myFractal2(float x, float y, float siz) {
  noFill();
  stroke(0, 0, 255, 5);
  ellipse(x, y, siz, siz);

  if (siz > 5) {
    for (int i = 2; i <= 2; i *= 2) {
      myFractal2(x - siz/i, y, siz/i);
      myFractal2(x + siz/i, y, siz/i);
      myFractal2(x, y - siz/i, siz/i);
      myFractal2(x, y + siz/i, siz/i);
    }
  }
}
