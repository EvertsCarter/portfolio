class Santa implements Eggnog{
  int x=-100;
  int y=100;
  Santa(int x, int y){
    this.x=x;
    this.y = y;
  }
  void move(){
    x+=5;
  }
  
  void show(){
    image(santa, x, y);
    if(x>1200)
    x=-300;
  }
}
