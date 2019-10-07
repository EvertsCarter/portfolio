float startX = 199;
float startY=150; 
float endX = 0;
float endY = 150;
float temp1=1;
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
  temp1=1;
  clear();
  arthur();

}
