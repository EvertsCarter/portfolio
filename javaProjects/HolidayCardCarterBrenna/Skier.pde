class Skier implements Eggnog{
   int x=0;
   float y=350;
  Skier(){
   }
   
   void show(){
     image(skier, x, y);
   }
   
   void move(){
    x+=1;
    
    y+=.18;
    if(y>820 || x>1200){
    y=350;
    x=-100;
    }
   }
   
   
}
