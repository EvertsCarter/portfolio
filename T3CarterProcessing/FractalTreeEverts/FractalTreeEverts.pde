private double fractionLength = .75; 
private int smallestBranch = 3; 
private double branchAngle = .4;  
public void setup() {   
  size(640,480);    
  noLoop(); 
} 
public void draw() {   
  background(0);   
  stroke(101,67,33);
  strokeWeight(2.5);
  line(320,480,320,380);   
  drawBranches(320,380,99,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) {  
  //your code here   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  int r;
  int g;
  branchLength *= fractionLength;
  line(endX1,endY1,x,y);
  line(endX2,endY2,x,y);
  r = (int)(Math.random()*200)+25;
  g = (int)(Math.random()*125)+25;
  stroke(r, g, 0);
  if(branchLength >= smallestBranch){
    drawBranches(endX1, endY1, branchLength, angle1);
    drawBranches(endX2, endY2, branchLength, angle2); 
  } 
} 
void mousePressed() {
  redraw();
}
