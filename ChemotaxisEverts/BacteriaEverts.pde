class Bacteria{
  private float x;
  private float y;
  private int randColor;
  float easing = 0.05;
  
  public Bacteria(int x, int y){
    this.x=x;
    this.y=y;
    this.randColor=randColor;
  }
 
   public void move(){  
     
     x+=(int)(Math.random()*8)-2;
     y+=(int)(Math.random()*8)-2;
     
     float targetX = mouseX;
     float dx = targetX - x;
     x += dx * easing;
     float targetY = mouseY;
     float dy = targetY - y;
     y += dy * easing;

     if(x>505 || y>505){
       x=0;
       y=0;
     }
   }
   
   public void show(){
    fill(0, (int)(Math.random()*255)+25, 255);
    ellipse(x, y, (int)(Math.random()*15)+10, (int)(Math.random()*15)+10); 
  }
  
  /*
  public void target(){
    int time=millis()-timer;
   if(  time>5000  && time<10000){
     fill(255, 0, 0);
    ellipse((int)(Math.random()*500)+10, (int)(Math.random()*500)+10, 15, 15);
   }
   
   */
  }
