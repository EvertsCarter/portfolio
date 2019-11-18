class NormalParticle implements Particle{
  private double x, y, speed, angle;
  int r, g, b;
  
  NormalParticle(double x, double y){
    this.x = x;
    this.y = y;
    angle = (Math.PI * ((Math.random()*25)));
    speed = ((Math.random()*3)+1);
    r = (int)(Math.random()*200)+100;
    g = (int)(Math.random()*200)+100;
    b = (int)(Math.random()*200)+100;
  }
  
  public void move(){
    x += speed*Math.cos(angle);
    y += speed*Math.sin(angle);
    
  }
  
  public void show(){
    fill(r, g, b);
    ellipse((int)x, (int)y, 10, 10);
    
    
  }
//your code here

}
