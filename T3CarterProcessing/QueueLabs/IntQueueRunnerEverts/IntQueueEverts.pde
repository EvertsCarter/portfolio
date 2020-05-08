import java.util.ArrayList;
import static java.lang.System.*;

public class IntQueue
{
  //option 2
  private ArrayList<Integer> listOfInts;

  public IntQueue()
  {
    listOfInts = new ArrayList<Integer>();
  }

  public void add(int item)
  {
    listOfInts.add(item);
  }

  public int remove()
  {
    return listOfInts.remove(listOfInts.size()-1);
  }

  public boolean isEmpty()
  {
    if(listOfInts.size() == 0){
      return true;
    }
    return false;
  }

  public int peek()
  {
    return listOfInts.get(listOfInts.size()-1);
  }

  public String toString()
  {
    String s = "[";
    for(int i=0; i<listOfInts.size(); i++){
      if(listOfInts.size()-1 == i){
        s+=listOfInts.get(i);
      }
      s+=listOfInts.get(i) + ", ";
    }
    return "";
  }
}
