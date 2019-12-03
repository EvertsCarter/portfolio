Hill slope = new Hill();
Santa sleigh = new Santa(0, 50);
Skier ski = new Skier();
Tree tree = new Tree(500, 500);
Tree tree1 = new Tree(100, 600);
Tree tree2 = new Tree(1000, 600);
Snow snow = new Snow();
ArrayList<Snow> snowflake = new ArrayList<Snow>();
PImage santa;
PImage skier;
int c;
void setup(){
  snowflake.add(new Snow());
  size(1200, 800);
  santa = loadImage("santa.png");
  skier = loadImage("skier.png");
  
  
}

void draw(){
  c++;
  background(#8ED8F2);
  slope.show();
  sleigh.move();
  sleigh.show();
  ski.move();
  ski.show();
  snow.addSnow();
  tree.show();
  tree1.show();
  tree2.show();
  
  for(int i=0; i<snowflake.size(); i++){
    snowflake.get(i).move();
    snowflake.get(i).show();
    if(snow.getY()>810){
    snowflake.remove(i);}
  }
  
  println(mouseX+" "+mouseY);
}

public interface Eggnog{
 void move();
 void show();
}
