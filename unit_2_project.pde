//feb 22 2925

//variables
int x;
int y;
int a;
int b;
int c;
int d;
int e;


void setup() {
  size(1000, 1000);
  x=0;
  y=150;
  a=300;
  b=450;
  c=600;
  d=750;
  e=900;//starting value
}

void draw() {
  background(#000B50);
  noStroke();//road
  fill(#424243);
  rect(0, 700, 1000, 300);

  fill(#FFC217);
  rect(0, 970, 1000, 20);
  rect(0, 710, 1000, 20);

  fill(#7C7A77);
  rect(x, 850, 80, 20);
  rect(y, 850, 80, 20);
  rect(a, 850, 80, 20);
  rect(b, 850, 80, 20);
  rect(c, 850, 80, 20);
  rect(d, 850, 80, 20);
  rect(e, 850, 80, 20);
  x=x+3;
  y=y+3;
  a=a+3;
  b=b+3;
  c=c+3;
  d=d+3;
  e=e+3;
  if (x>1000) {
    x=-100;
    if (y>1000) {
      y=-250;
      if (a>1000) {
        a=-400;
        if (b>1000) {
          b=-550;
          if (c>1000) {
            c=-700;
            if (d>1000) {
              d=-850;
              if (e>1000) {
                e=-1000;
              }
            }
          }
        }
      }
    }
  }
}
