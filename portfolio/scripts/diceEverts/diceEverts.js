'use strict';
let die = [];
var xpos = 0; 
var ypos = 0;
var total=0;
var hs = 0;
var mp=1;
var num1 = 0;
var num2 = 0;
var num3 = 0;
var num4 = 0;
var num5 = 0;
var num6 = 0;


function setup()
{
    
     var canvas = createCanvas(500, 500);
    canvas.parent('sketch-div');
   // createCanvas(500, 500);
    noLoop();
  
}
function draw()
{
  background(0);
  total=0;
  var xpos = 0; 
  var ypos = 0;
  
  for(let i=0; i<3; i++){
    for( let k=0; k<9; k++){
        die[i]=new Die (xpos, ypos);
        die[i].show();
        die[i].roll();
        xpos+=55;
        total+=die[i].getRand();
    }
    xpos=0;
    ypos+=55;
}

if(total>hs){
         hs=total;
       }

//Text on bottom half
  textSize(40);
  text("Best Possible Score: 162", 15, 260);
  text("Your High Score: " + hs, 50, 315);
  text("Total: " + total, 140, 375);
  textSize(12);
  text("Number of 1's: " + num1, 50, 450);
  text("Number of 2's: " + num2, 200, 450);
  text("Number of 3's: " + num3, 350, 450);
  text("Number of 4's: " + num4, 50, 475);
  text("Number of 5's: " + num5, 200, 475);
  text("Number of 6's: " + num6, 350, 475);
  
    
     num1 = 0;
     num2 = 0;
     num3 = 0;
     num4 = 0;
     num5 = 0;
     num6 = 0;
     mp=1;
     

}
function mousePressed()
{
  redraw();
}
class Die 
{
  constructor(x, y) //constructor
  {
    this.x=x;
    this.y=y;
    this.rand = Math.floor(Math.random()*6)+1;
  }
   getRand(){
    return this.rand;
  }
   roll()
  {
    //your code here
  }
   show()
  {
    if(mousePressed || mp<=27){   
      mp++;
      console.log(this.rand);
      if(this.rand==1){
        num1=num1+1;
        fill(255, 255, 255);
        rect(this.x, this.y, 50, 50);
        fill(0);
        ellipse(this.x+25, this.y+25, 8, 8);
      }
      if(this.rand==2){
        num2=num2+1;
        fill(255, 255, 255);
        rect(this.x, this.y, 50, 50);
        fill(0);
        ellipse(this.x+12, this.y+38, 8, 8);
        ellipse(this.x+38, this.y+12, 8, 8);
      }
      if(this.rand==3){
        num3=num3+1;
        fill(255, 255, 255);
        rect(this.x, this.y, 50, 50);
        fill(0);
        ellipse(this.x+25, this.y+25, 8, 8);
        ellipse(this.x+12, this.y+38, 8, 8);
        ellipse(this.x+38, this.y+12, 8, 8);
      }
      if(this.rand==4){
        num4=num4+1;
        fill(255, 255, 255);
        rect(this.x, this.y, 50, 50);
        fill(0);
        ellipse(this.x+12, this.y+38, 8, 8);
        ellipse(this.x+38, this.y+12, 8, 8);
        ellipse(this.x+12, this.y+12, 8, 8);
        ellipse(this.x+38, this.y+38, 8, 8);
      }
      if(this.rand==5){
        num5=num5+1;
        fill(255, 255, 255);
        rect(this.x, this.y, 50, 50);
        fill(0);
        ellipse(this.x+12, this.y+38, 8, 8);
        ellipse(this.x+38, this.y+12, 8, 8);
        ellipse(this.x+12, this.y+12, 8, 8);
        ellipse(this.x+38, this.y+38, 8, 8);
        ellipse(this.x+25, this.y+25, 8, 8);
      }
      if(this.rand==6){
        num6=num6+1;
        fill(255, 255, 255);
        rect(this.x, this.y, 50, 50);
        fill(0);
        ellipse(this.x+12, this.y+38, 8, 8);
        ellipse(this.x+38, this.y+12, 8, 8);
        ellipse(this.x+12, this.y+12, 8, 8);
        ellipse(this.x+38, this.y+38, 8, 8);
        ellipse(this.x+12, this.y+26, 8, 8);
        ellipse(this.x+38, this.y+26, 8, 8);
      }
       fill(0, 200, 0);
       rect(0, 165, 500, 55);
    }
  }
}