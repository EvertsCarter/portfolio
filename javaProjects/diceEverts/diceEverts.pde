Die[] die = new Die[27];
int xpos = 0; 
int ypos = 0;
int total=0;
int hs = 0;
int mp=1;
int num1 = 0;
int num2 = 0;
int num3 = 0;
int num4 = 0;
int num5 = 0;
int num6 = 0;


void setup()
{
  noLoop();
  size(500, 500);
}
void draw()
{
  background(0, 0, 0);
  total=0;
  int xpos = 0; 
  int ypos = 0;
  
  for(int i=0; i<=3; i++){
    for(int k=0; k<9; k++){
      die[i] = new Die(xpos, ypos);
  xpos+=55;
  die[i].show();
  total+=die[i].getRand();
    }
    xpos=0;
    ypos+=55;
}

if(total>hs){
         hs=total;
       }

//Text on bottom half
  textSize(40);
  text("Best Possible Score: 162", 15, 260);
  text("Your High Score: " + hs, 50, 315);
  text("Total: " + total, 140, 375);
  textSize(12);
  text("Number of 1's: " + num1, 50, 450);
  text("Number of 2's: " + num2, 200, 450);
  text("Number of 3's: " + num3, 350, 450);
  text("Number of 4's: " + num4, 50, 475);
  text("Number of 5's: " + num5, 200, 475);
  text("Number of 6's: " + num6, 350, 475);
  
     num1 = 0;
     num2 = 0;
     num3 = 0;
     num4 = 0;
     num5 = 0;
     num6 = 0;
     mp=1;

}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  private int x;
  private int y;
  private int rand;
  //variable declarations here
  Die(int x, int y) //constructor
  {
    this.x=x;
    this.y=y;
    rand=(int)(Math.random()*6)+1;
  }
  public int getRand(){
    return rand;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    if(mousePressed || mp<=27){   
      mp++;
      println(rand);
      if(rand==1){
        num1=num1+1;
        fill(255, 255, 255);
        rect(x, y, 50, 50);
        fill(0);
        ellipse(x+25, y+25, 8, 8);
      }
      if(rand==2){
        num2=num2+1;
        fill(255, 255, 255);
        rect(x, y, 50, 50);
        fill(0);
        ellipse(x+12, y+38, 8, 8);
        ellipse(x+38, y+12, 8, 8);
      }
      if(rand==3){
        num3=num3+1;
        fill(255, 255, 255);
        rect(x, y, 50, 50);
        fill(0);
        ellipse(x+25, y+25, 8, 8);
        ellipse(x+12, y+38, 8, 8);
        ellipse(x+38, y+12, 8, 8);
      }
      if(rand==4){
        num4=num4+1;
        fill(255, 255, 255);
        rect(x, y, 50, 50);
        fill(0);
        ellipse(x+12, y+38, 8, 8);
        ellipse(x+38, y+12, 8, 8);
        ellipse(x+12, y+12, 8, 8);
        ellipse(x+38, y+38, 8, 8);
      }
      if(rand==5){
        num5=num5+1;
        fill(255, 255, 255);
        rect(x, y, 50, 50);
        fill(0);
        ellipse(x+12, y+38, 8, 8);
        ellipse(x+38, y+12, 8, 8);
        ellipse(x+12, y+12, 8, 8);
        ellipse(x+38, y+38, 8, 8);
        ellipse(x+25, y+25, 8, 8);
      }
      if(rand==6){
        num6=num6+1;
        fill(255, 255, 255);
        rect(x, y, 50, 50);
        fill(0);
        ellipse(x+12, y+38, 8, 8);
        ellipse(x+38, y+12, 8, 8);
        ellipse(x+12, y+12, 8, 8);
        ellipse(x+38, y+38, 8, 8);
        ellipse(x+12, y+26, 8, 8);
        ellipse(x+38, y+26, 8, 8);
      }
       fill(0, 200, 0);
       rect(0, 165, 500, 55);
    }
  }
}
