class NormalParticle implements Particle{
  private double x, y, speed, angle;
  int r, g, b;
  
   NormalParticle(double x, double y){
    this.x = x;
    this.y = y;
    angle = (Math.PI * ((Math.random()*25)));
    speed = ((Math.random()*15)+1);
    r = (int)(Math.random()*255)+230;
    g = (int)(Math.random()*255)+230;
    b =0;
  }
  
  public void move(){
    x += speed*Math.cos(angle);
    y += speed*Math.sin(angle);
      
    if(x>9055 || x<-9055 || y>9055 || y<-9055){
      setup();
    }    
  }
  
  public void show(){
    fill(r, g, b);
    ellipse((int)x, (int)y, 10, 10);  
  }
}
