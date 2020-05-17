import java.util.LinkedList;
import static java.lang.System.*;

public class JavaLinkedList
{
  private LinkedList<Integer> list;

  public JavaLinkedList()
  {
    list = new LinkedList<Integer>();
  }

  public JavaLinkedList(int[] nums)
  {
    list = new LinkedList<Integer>();
    for(int num : nums)
    {
      list.add(num);
    }
  }

  public double getSum(  )
  {
    double total=0;
    for(int num: list){
      total+=num;
    }
    return total;
  }

  public double getAvg(  )
  {
    double avg = 0;
    avg = getSum()/list.size();
    return avg;
  }

  public int getLargest()
  {
    int largest=Integer.MIN_VALUE;
    for(int i=1; i<list.size(); i++){
      if(list.get(i)>list.get(i-1)){
        largest = list.get(i);
      }
    }
    return largest;
  }

  public int getSmallest()
  {
    int smallest=list.get(0);
    for(int i=list.size(); i==0; i--){
      if(list.get(i)<list.get(i-1) || list.get(i-1)==list.get(i-1)){
        smallest =list.get(i);
      }
    }
    return smallest;
  }

  public String toString()
  {
    String output="Sum: " + getSum() + "\nAverage: " + getAvg() + "\nSmallest: " + getSmallest() + "\nLargest: " + getLargest() + "\n";
    return output;
  }
}
