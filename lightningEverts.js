
'use strict'
var startX = 199;
var startY=150; 
var endX = 0;
var endY = 150;
var startX2 = 199;
var startY2=150; 
var endX2 = 0;
var endY2= 150;
var startTime;

function setup()
{
    createCanvas(500,500);
    strokeWeight(5);
    background(0);

}

function arthur(){
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

function draw()
{
arthur(); 
  stroke((int)(Math.random()*255)+100, 0, 0);
 
  while(endX<500){
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
  var time=millis()-startTime;
  if(time>50){
    startTime=millis();
    redraw();
  }  
}

function reset()
{
  startX=199;
  startY=150;
  endX=0;
  endY=150;
  startX2=199;
  startY2=150;
  endX2=0;
  endY2=150;
  redraw();
  arthur();

}
