Bacteria [] b;
int savedTime;
int totalTime = 5000;
boolean target = false;
PVector targetPos;
int total=0;
boolean reached = false, gameOver = false;
int deleteIndex = 9;


//declare bacteria variables here   
 void setup()   
 {     
   size(500, 500);
   b = new Bacteria[10];
   for(int i=0; i<10; i++){
     b[i]= new Bacteria(width/2, height/2);
   }
   targetPos = new PVector((int)(Math.random()*400)+50, (int)(Math.random()*400)+50);
   textAlign(CENTER, CENTER);
 }   
 void draw()   
 {    
   background(0);
   fill(255);
   text("Total:" + total, width/2, 50);
   if(!gameOver){
     for(int i=0; i<=deleteIndex; i++){
     b[i].move();
     b[i].show();
     if(abs(b[i].x-targetPos.x)<5 && abs(b[i].y-targetPos.y)<5 ){
       total++;
       reached = true;
       println("" + total);
     }
   }
   
   if(frameCount % 90 == 0){
     target = !target;
     targetPos = new PVector((int)(Math.random()*400)+50, (int)(Math.random()*400)+50);
     if(!reached){
       b[deleteIndex] = null;
       if(deleteIndex==0){
          gameOver = true;
       }deleteIndex--;
       println(b);
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
   //move and show the bacteria   
 }  
 
