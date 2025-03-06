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
int c1;
int b2;
int c2;
int w3;
int b3;
int c3;
int b4;
int counter;



void setup() {
  size(1000, 1000);
  b1=0;//starting value buildings
  w1=10;
  w2=60;
  c1=100;
  b2=300;
  c2=400;
  w3=300;
  b3=500;
  c3=660;
  b4=760;
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
  counter = counter +1;
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
  if (counter<50) { //blinking
  fill(#EDDC1D);//light yellow
  rect(w1,350,30,20);
  rect(w2,350,30,20);
  rect(w1,390,80,20);
  rect(w1,430,30,20);
  }
  rect(w2,430,30,20);
  fill(#F5A328);//light orange
  rect(w1,470,30,20);
  rect(w2,470,30,20);
  rect(w1,510,80,50);
  fill(#B95F04);//dark orange
  rect(w1,580,80,30);
  if (counter<30) {
  rect(w1,630,30,20);
  }
  rect(w2,630,30,20);
  rect(w1,670,30,20);
  rect(w2,670,30,20);
  
  //connection 1
  fill(0);
  rect(c1,565,120,135);
  triangle(c1,565,c1,480,c1+120,565);
  fill(#F5A328);
  triangle(c1+10,510,c1+10,560,c1+90,560);
  
  //building 2
  fill(0);
  quad(b2,450,b2-80,565,b2-80,700,b2,700);
  rect(b2,450,100,250);
  fill(#F5A328);
  quad(w3+10,470,w3+85,470,w3+85,565,w3-55,565);
  fill(#B95F04);
  rect(w3-55,585,140,50);
  fill(0);
  rect(w3+28,470,20,195);
  
  //connection 2
  rect(c2,512,100,20);
  rect(c2-10,483,20,31,5);
  rect(c2+90,483,10,38,5);
  rect(c2+20,530,10,50);
  rect(c2+70,530,10,70);
  rect(c2+45,530,10,110);
  fill(#EDDC1D);
  stroke(0);
  strokeWeight(5);
  ellipse(c2+25,580,20,20);
  ellipse(c2+75,600,20,20);
  ellipse(c2+50,640,20,20);
  noStroke();
  fill(0);
  
  //building 3
  rect(b3,464,160,237);
  triangle(b3,464,b3+76,367,b3+160,464);
  fill(#EDDC1D);
  triangle(b3+22,464,b3+76,392,b3+138,464);
  fill(0);
  ellipse(b3+76,300,134,134);
  stroke(0);
  strokeWeight(10);
  line(b3+42,415,b3+42,334);
  line(b3+110,415,b3+110,334);
  rect(b3+62,356,28,20,7);
  line(b3+15,450,b3+26,336);
  line(b3+127,336,b3+139,450);
  fill(#EDDC1D);
  ellipse(b3+76,300,100,100);
  line(b3+76,242,b3+76,355);
  line(b3+19,300,b3+128,300);
  noStroke();
  fill(#F5A328);
  rect(b3+21,483,118,20);
  if (counter<40) {
  rect(b3+21,522,118,40);
  }
  fill(#B95F04);
  if (counter<50) {
  rect(b3+21,583,118,80);
  }
  
  //connection 3
  stroke(0);
  strokeWeight(20);
  line(c3-10,572,c3+130,473);
  noStroke();
  
  //building 4
  fill(0);
  quad(b4,700,b4+30,384,b4+210,384,b4+240,700);
  fill(0);
  quad(b4+30,384,b4+80,320,b4+160,320,b4+210,384);
  fill(#EDDC1D);
  quad(b4+40,384,b4+84,330,b4+156,330,b4+200,384);

  
  
 
  //b1=b1+2; w1=w1+2; w2=w2+2; c1=c1+2; b2=b2+2; w3=w3+2; b3=b3+2; c2=c2+2; c3=c3+2; b4=b4+2;
  
  x=x+3; y=y+3; a=a+3; b=b+3; c=c+3; d=d+3; e=e+3; f=f+3; g=g+3;
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
  if (counter>50) {
    counter=0;
  }
  if(b4>1000) {
    b4=-100;
  }
    drawMouseCoordinates();
}

void drawMouseCoordinates() {
  fill(#FF0000); // Red color
  textSize(30);
  textAlign(LEFT, TOP);
  text("X: " + mouseX + "  Y: " + mouseY, 10, 10);
}              
      
  
  
