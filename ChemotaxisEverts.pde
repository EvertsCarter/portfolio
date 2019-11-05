Bacteria [] b;

//declare bacteria variables here   
 void setup()   
 {     
   size(500, 500);
   b = new Bacteria[10];
   for(int i=0; i<10; i++){
     b[i]= new Bacteria(width/2, height/2);
   }
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   background(0);
   for(int i=0; i<10; i++){
     b[i].move();
     b[i].show();
   }
   
   

   //move and show the bacteria   
 }  
 
