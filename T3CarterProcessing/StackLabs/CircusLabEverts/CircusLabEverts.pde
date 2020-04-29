import java.util.Stack;


void setup() {
 String[] str = loadStrings("circus.txt");
 Stack stack = new Stack();
 ArrayList<Integer> x = new ArrayList<Integer>();
 x.add(Integer.parseInt(str[0]));
 x.add(Integer.parseInt(str[8]));
 x.add(Integer.parseInt(str[15]));
 for(int i=str.length-2; i>0; i--){
   stack.push(str[i]);
 }
 
 for(int i=x.get(0); i>=0; i--){
   if(i==x.get(0)){
    println(i); 
   } else{
     println(stack.pop() + " ");
   }
 }
 
 //println("Set " + x.get(1));
 
 for (int i=x.get(1)+x.get(0)+1; i>x.get(0); i--) {
    println(stack.pop()+" ");
  }
 
  //println("SET "+x.get(2));
  
  for (int i=x.get(2)+x.get(1)+x.get(0)+2; i>x.get(1)+x.get(0)+1; i--) {
    println(stack.pop()+" ");
  } 
}
