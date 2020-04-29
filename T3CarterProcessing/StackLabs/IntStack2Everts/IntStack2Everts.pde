void setup() {
  IntStack test = new IntStack();
  test.push(5);
  test.push(7);
  test.push(9);
  System.out.println(test);
  System.out.println(test.isEmpty());
  System.out.println(test.pop());
  System.out.println(test.peek());
  System.out.println(test.pop());
  System.out.println(test.pop());
  //System.out.println(test.peek());  //blows up
  System.out.println(test.isEmpty());
  System.out.println(test);
}

class IntStack {
  private ArrayList<Integer> listOfInts;

  public IntStack() {
    listOfInts = new ArrayList<Integer>();
  }

  public void push(int item) {
    listOfInts.add(item); 
  }

  public int pop() {
    return listOfInts.remove(listOfInts.size()-1);
  }

  public boolean isEmpty() {
    if(listOfInts.size() == 0){
     return true; 
    }else{
     return false; 
    }
  }

  public int peek() {
    return listOfInts.get(listOfInts.size()-1);
  }

  public String toString() {
    String s = "[";
    for(int i=0; i<listOfInts.size(); i++){
      if(listOfInts.size()-1 == i){
       s+=listOfInts.get(i); 
      }else{
        s+=listOfInts.get(i) + ", ";
      }
    }
    s+="]";
    return s;
  }
}
