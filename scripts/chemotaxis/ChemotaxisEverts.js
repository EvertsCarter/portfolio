'use strict';
var b;
var savedTime;
var totalTime = 5000;
var target = false;
var reached = false; 
var gameOver = false;
var total=0;
var deleteIndex = 19;
var targetPos;
  
 function setup()   
 {     
   createCanvas(500, 500);
   b = [];
   for(var i=0; i<20; i++){
     b[i]= new Bacteria(width/2, height/2);
   }
   targetPos = createVector(Math.floor(Math.random()*400)+50, Math.floor(Math.random()*400)+50);
   textAlign(CENTER, CENTER);
 }   
 function draw()   
 {    
   background(0);
   fill(255);
   text("Total:" + total, width/2, 50);
   if(!gameOver){
       
     for(var i=0; i<=deleteIndex; i++){
     b[i].move();
     b[i].show();
     if(abs(b[i].x-targetPos.x)<5 && abs(b[i].y-targetPos.y)<5 ){
       total++;
       reached = true;
       console.log("" + total);
     }
         
   }
   
   if(frameCount % 90 == 0){
     target = !target;
     targetPos =  createVector(Math.floor(Math.random()*400)+50, Math.floor(Math.random()*400)+50);
     if(!reached){
       b[deleteIndex] = null;
       if(deleteIndex==0){
          gameOver = true;
       }deleteIndex--;
     }
     reached = false;
   }
   if(target){
     fill(255, 0, 0);
     ellipse(targetPos.x, targetPos.y, 10, 10);
   }
   }else{
  fill(255);
  textSize(60);
  text("Game Over!", width/2, height/2);
   }
 }



 
     

 
class Bacteria{
 
 constructor(x,y){
    this.x=x;
    this.y=y;
    this.easing = .09;
  }
 
    move(){     
     this.x+=Math.floor(Math.random()*8)-2;
     this.y+=Math.floor(Math.random()*8)-2;
     
     var targetX = mouseX;
     var dx = targetX - this.x;
     this.x += dx * this.easing;
     var targetY = mouseY;
     var dy = targetY - this.y;
     this.y += dy * this.easing;

     if(this.x>505 || this.y>505){
       this.x=0;
       this.y=0;
     }
   }
    
   
    show(){
    fill(0, Math.floor(Math.random()*255)+25, 255);
    ellipse(this.x, this.y, Math.floor(Math.random()*15)+10, Math.floor(Math.random()*15)+10); 
  }
  }