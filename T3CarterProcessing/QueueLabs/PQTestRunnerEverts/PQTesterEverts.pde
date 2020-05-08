import java.util.Queue;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.PriorityQueue;

public class PQTester
{
  private Queue<String> pq;
  String[] data;

  public PQTester()
  {
    pq = new PriorityQueue();
  }

  public PQTester(String list)
  {
    pq= new PriorityQueue();
    data = list.split(" ");
    for(int i=0; i<data.length; i++){
      pq.add(data[i]);
    }
  }

  public void setPQ(String list)
  {
    data = list.split(" ");
    for(int i=0; i<data.length; i++){
      pq.add(data[i]);
    }
  }
  
  public Object getMin()
  {
    String min = pq.element();
    return min;
  }
  
  public String getNaturalOrder()
  {
    String output="";
    for(int i=0; i<data.length; i++){
      output+=pq.poll() + " ";
    }
    return output;    
  }
  
  public String toString(){
    return "" + pq;
  }
}
