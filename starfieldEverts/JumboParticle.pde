class JumboParticle extends NormalParticle //uses inheritance
{ 
  private double x, y, speed, angle;
  int r, g, b;
  
  public JumboParticle(double x, double y){
    super(x, y); 
    this.x = x;
    this.y = y;
    angle = (Math.PI * ((Math.random()*25)));
    speed = ((Math.random()*4)+1);
    r = (int)(Math.random()*255)+230;
    g = (int)(Math.random()*255)+230;
    b =0;
  }
  
   public void move(){
    x += speed*Math.cos(angle);
    y += speed*Math.sin(angle);
  }
  
  public void show(){
    fill(r, g, b);
    ellipse((int)x, (int)y, 30, 30);  
  }
}
