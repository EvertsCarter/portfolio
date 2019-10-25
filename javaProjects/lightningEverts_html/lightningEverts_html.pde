float startX = 199;
float startY=150; 
float endX = 0;
float endY = 150;
float startX2 = 199;
float startY2=150; 
float endX2 = 0;
float endY2= 150;
int startTime;

void setup()
{
    size(500,500);
    strokeWeight(5);
    background(0, 0, 0);

}

void arthur(){
  stroke(255, 255, 255);
  color(255, 255, 255);
  line(50, 500, 80, 310);
  line(100, 500, 80, 310);
  line(80, 320, 80, 125);
  line(80, 195, 200, 150);
  line(80, 195, 50, 310);
  circle(80, 140, 65);
   stroke(0, 0, 0);
   color(0, 0, 0);
   circle(70, 140, 10);
   circle(90, 140, 10);
}

void draw()
{
arthur(); 
  stroke((int)(Math.random()*255)+100, 0, 0);
 
  while(endX<width){
    endX=startX+(int)(Math.random()*10);
    endY=startY+(int)(Math.random()*19)-9;
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY; 
    endX2=startX2+(int)(Math.random()*10);
    endY2=startY2+(int)(Math.random()*19)-9;
    line(startX2, startY2, endX2, endY2);
    startX2=endX2;
    startY2=endY2;
  }
  int time=millis()-startTime;
  if(time>50){
    startTime=millis();
    reset();
  }
  
  
  
  
 
  
}

void reset()
{
  startX=199;
  startY=150;
  endX=0;
  endY=150;
  startX2=199;
  startY2=150;
  endX2=0;
  endY2=150;
  clear();
  arthur();

}
