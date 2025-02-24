//feb 22 2925 

//variables
int x; int y;

void setup(){
  size(600,600);
  x=0; y=0; //starting value
}
  
void draw(){
  background(255);
  ellipse(x,y,200,200);
  y=y+3;
  x=x+3;// x moves 1 digit foward every frame
  strokeWeight(3);
  fill(mouseX);
  line(300,300,mouseX,mouseY);
  if(y>700){
    y=-100;
    x=-100;
  }
}
