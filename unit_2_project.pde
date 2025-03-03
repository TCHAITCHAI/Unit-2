//feb 22 2925

//variables
int x;
int y;
int a;
int b;
int c;
int d;
int e;
int f;
int g;
int b1;
int w1;
int w2;



void setup() {
  size(1000, 1000);
  b1=0;//starting value buildings
  w1=10;
  w2=60;
  x=-100;//starting value road
  y=50;
  a=200;
  b=350;
  c=500;
  d=650;
  e=800;
  f=950;
  g=1100;
}

void draw() {
  background(#000B50);
    for (int yPos = 0; yPos <= 700; yPos++) {
    float inter = map(yPos, 0, 700, 0, 1);
    color c = lerpColor(#447CE8, #000B50, inter);
    stroke(c);
    line(0, yPos, width, yPos);
  }
  noStroke();//road
  fill(#424243);
  rect(0, 700, 1000, 300);

  fill(#CBCBCB);
  rect(0, 960, 1000, 10);
  rect(0, 730, 1000, 10);
  fill(#FFC217);
  rect(0, 970, 1000, 20);
  rect(0, 710, 1000, 20);
  //road detials    
  fill(#7C7A77);
  rect(x, 850, 80, 20);
  rect(y, 850, 80, 20);
  rect(a, 850, 80, 20);
  rect(b, 850, 80, 20);
  rect(c, 850, 80, 20);
  rect(d, 850, 80, 20);
  rect(e, 850, 80, 20);
  rect(f, 850, 80, 20);
  rect(g, 850, 80, 20);
  //building 1
  fill(0);
  rect(b1,330,100,370);
  fill(#EDDC1D);
  rect(w1,350,30,20);
  rect(w2,350,30,20);
  x=x+3;
  y=y+3;
  a=a+3;
  b=b+3;
  c=c+3;
  d=d+3;
  e=e+3;
  f=f+3;
  g=g+3;
  //road details moving
  if (g>1200) {
    g=-150;
  }
  if (f>1200) {
    f=-150;
  } 
  if (e>1200) {
    e=-150;
  } 
  if (d>1200) {
    d=-150;
  } 
  if (c>1200) {
    c=-150;
  } 
  if (b>1200) {
    b=-150;
  } 
  if (a>1200) {
    a=-150;
  } 
  if (y>1200) {
    y=-150;
  } 
  if (x>1200) {
    x=-150;
  } 
    drawMouseCoordinates();
}

void drawMouseCoordinates() {
  fill(#FF0000); // Red color
  textSize(30);
  textAlign(LEFT, TOP);
  text("X: " + mouseX + "  Y: " + mouseY, 10, 10);
}              
      
  
  
