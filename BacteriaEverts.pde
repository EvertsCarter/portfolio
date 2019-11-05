class Bacteria{
  private int x;
  private int y;
  private int randColor;
  
  public Bacteria(int x, int y){
    this.x=x;
    this.y=y;
    this.randColor=randColor;
  }
 
   public void move(){  
     
     x+=(int)(Math.random()*8)-2;
     y+=(int)(Math.random()*8)-2;
     

  
     if(x>505 || y>505){
       x=0;
       y=0;
     }
     


   }
   
   public void show(){
    fill(0, 255, 0);
    ellipse(x, y, 15, 15);
  }
  
  
  
}

/*if(x == mouseX || y == mouseY){
     x+=(int)(Math.random()*10)-2;
     y+=(int)(Math.random()*10)-2;
     }
     
     */
