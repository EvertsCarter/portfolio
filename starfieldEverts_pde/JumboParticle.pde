class JumboParticle extends NormalParticle //uses inheritance
{ 
  
  public void show(){
    fill(r, g, b);
    ellipse((int)super.x, (int)super.y, 10, 10);  
  }
}
