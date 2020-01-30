import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;
import java.util.ListIterator;

public class IteratorRemover
{
  private ArrayList<String> list = new ArrayList<String>();
  private String toRemove;
  

  public IteratorRemover(String line, String rem)
  {
    list = new ArrayList<String>(Arrays.asList(line.split(" ")));
    toRemove = rem;
  }

  public void setTest(String line, String rem)
  {
    list.add(line);
    toRemove = rem;
  }

  public void remove()
  {
    ListIterator<String> it = list.listIterator();
    while(it.hasNext()){
      if(it.next().equals(toRemove)){
        it.remove();
      }
    }
    
  }

  public String toString()
  {
    return list + "";
  }
}
