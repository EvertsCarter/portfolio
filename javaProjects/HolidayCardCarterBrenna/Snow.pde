class Snow implements Eggnog{
  int x;
  int y;
  double speed;
  double size;
  Snow(){
    y=(int)(Math.random()*200)-200;
    x=(int)(Math.random()*1200);
    speed = Math.random()*3+1;
    size = (Math.random()*7)+3;
  }
  
  
  void move(){
    y+= (double)speed;
  }
  
  void show(){
    fill(255);
    ellipse(x, y, (float)size, (float)size);
    
  }
  void addSnow(){
   snowflake.add(new Snow()); 
  }
  int getY(){
   return y; 
  }
}
