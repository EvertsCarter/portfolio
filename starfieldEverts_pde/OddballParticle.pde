class OddballParticle implements Particle //uses an interface
{
  
  private double x, y, speed, angle;
  int r, g, b;
  
  OddballParticle(double x, double y){
    this.x = x;
    this.y = y;
    angle = (Math.PI * ((Math.random()*25)));
    speed = ((Math.random()*0.5));
    r = (int)(Math.random()*200)+100;
    g = 0;
    b = 0;
  }
  
  public void move(){
    x += (int)(Math.random()*10) * speed*Math.cos(angle);
    y += (int)(Math.random()*10) * speed*Math.sin(angle);
    
  }
  
  public void show(){
    fill(r, g, b);
    ellipse((int)x, (int)y, 10, 10);
    
    
  }

}
