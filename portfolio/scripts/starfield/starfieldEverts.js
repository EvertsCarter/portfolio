'use strict';

//your code here...follow the steps listed on the repo..be creative! (like you have been)
//Particle[] p = new Particle[1000];
var p = [];
var stars = true;

function setup(){
  createCanvas(800, 800);
  for(var i=0; i<1000; i++){
    p[1] = new OddballParticle(width/2, height/2);
    p[2] = new JumboParticle(width/2, height/2);
    p[i] = new NormalParticle(width/2, height/2);
  }  
}
function draw(){
  background(0);
 
  for(var i=0; i<p.length; i++){
    p[i].move();
    p[i].show();  
  }
  
}

interface Particle{
  public function move();
  public function show();
}

class NormalParticle implements Particle{
  private var x, y, speed, angle;
  var r, g, b;
  
   constructor(x, y){
    this.x = x;
    this.y = y;
    angle = (Math.PI * ((Math.random()*25)));
    speed = ((Math.random()*15)+5);
    r = (int)(Math.random()*255)+230;
    g = (int)(Math.random()*255)+230;
    b =0;
  }
  
   move(){
    x += speed*Math.cos(angle);
    y += speed*Math.sin(angle);
      
    if(x>7000 || x<-7000 || y>7000 || y<-7000){
      setup();
    }    
  }
  
  show(){
    fill(r, g, b);
    ellipse((int)x, (int)y, 10, 10);  
  }
}

