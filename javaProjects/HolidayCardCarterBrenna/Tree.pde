class Tree{
  int x, y;
  Tree(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void show(){
    fill(#8B5E41);
    rect(x-25, y+130, 50, 20);
    fill(#3DAA0F);
    triangle((float)x, (float)y, x-50, y+130, x+50, y+130);
  }
  
}
