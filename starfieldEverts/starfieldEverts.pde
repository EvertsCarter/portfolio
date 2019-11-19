//your code here...follow the steps listed on the repo..be creative! (like you have been)
Particle[] p = new Particle[1000];
boolean stars = true;

void setup(){
  size(800, 800);
  for(int i=0; i<p.length; i++){
    p[1] = new OddballParticle(width/2, height/2);
    p[2] = new JumboParticle(width/2, height/2);
    p[i] = new NormalParticle(width/2, height/2);
  }  
}
void draw(){
  background(0);
 
  for(int i=0; i<p.length; i++){
    p[i].move();
    p[i].show();  
  }
  
}

interface Particle{
  public void move();
  public void show();
}
