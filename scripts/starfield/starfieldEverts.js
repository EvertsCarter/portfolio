'use strict';

//your code here...follow the steps listed on the repo..be creative! (like you have been)
//Particle[] p = new Particle[1000];
var p = [];
var stars = true;

function setup(){
  var canvas = createCanvas(500, 500);
    canvas.parent('sketch-div');
  for(var i=0; i<1000; i++){
    p[0] = new oddballParticle(width/2, height/2);
    p[1] = new JumboParticle(width/2, height/2);
    p[i] = new normalParticle(width/2, height/2);
  }  
}
function draw(){
  background(0);
 
  for(var i=0; i<p.length; i++){
    p[i].move();
    p[i].show();  
  } 
}

//NormalParticle Class
class normalParticle{
    constructor(x, y){
    this.x = x;
    this.y = y;
    this.angle = (Math.PI * ((Math.random()*25)));
    this.speed = ((Math.random()*15)+5);
    this.r = (int)(Math.random()*255)+230;
    this.g = (int)(Math.random()*255)+230;
    this.b =0;
  }
  
   move(){
    this.x += this.speed*Math.cos(this.angle);
    this.y += this.speed*Math.sin(this.angle);
        
  }
  show(){
    fill(this.r, this.g, this.b);
    ellipse(this.x, this.y, 10, 10);  
  }  
}


//Oddball Particle
class oddballParticle
{  
  constructor(x, y){
    this.x = x;
    this.y = y;
    this.angle = (Math.PI * ((Math.random()*25)));
    this.speed = ((Math.random()*1.5)+0.5);
    this.r = 255;
    this.g = 255;
    this.b = 255;
  } 
   move(){
    this.x += (Math.random()*10) * this.speed*Math.cos(this.angle);
    this.y += (Math.random()*10) * this.speed*Math.sin(this.angle);
       
       if(this.x>820 || this.x<-20 || this.y>820 || this.y<-20){
      setup();
    }  
  } 
   show(){
    fill(this.r, this.g, this.b);
    ellipse(this.x, this.y, 10, 10);  
  }
}

//Jumbo Particle
class JumboParticle
{ 
  constructor(x, y){
    this.x = x;
    this.y = y;
    this.angle = (Math.PI * ((Math.random()*25)));
    this.speed = ((Math.random()*8)+3);
    this.r = (int)(Math.random()*255)+230;
    this.g = (int)(Math.random()*255)+230;
    this.b =0;
  }
    move(){
    this.x += this.speed*Math.cos(this.angle);
    this.y += this.speed*Math.sin(this.angle);
  }
  show(){
    fill(this.r, this.g, this.b);
    ellipse(this.x, this.y, 30, 30);  
  }
}



