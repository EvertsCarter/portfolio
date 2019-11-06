Bacteria [] b;
int timer;


//declare bacteria variables here   
 void setup()   
 {     
   size(500, 500);
   b = new Bacteria[15];
   for(int i=0; i<15; i++){
     b[i]= new Bacteria(width/2, height/2);
   }
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   background(0);
   
   //timer that draws target
   /*
   int time=millis()-timer;
   if(  time>5000  && time<10000){
     fill(255, 0, 0);
    ellipse((int)(Math.random()*500)+10, (int)(Math.random()*500)+10, 15, 15);
   }
   
   */
   
   for(int i=0; i<15; i++){
     b[i].move();
     b[i].show();
     //b[i].target();
   }
  
  
  
   
   
   

   //move and show the bacteria   
 }  
 
