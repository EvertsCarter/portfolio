import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;

public class PalinList
{
  private Queue<String> queue;
  private Stack<String> stack;
  private String[] str;

  public PalinList()
  {
    setList("");
  }

  public PalinList(String list)
  {
    stack = new Stack<String>();
    setList(list);
  }

  public void setList(String list)
  {
    queue = new LinkedList<String>();
    stack = new Stack<String>();
    str = list.split(" ");
    for(int i=0; i<str.length; i++){
      queue.add(str[i]);
      stack.push(str[i]);
    }
  }

  public boolean isPalin()
  {
    while(!queue.isEmpty()){
      if(queue.remove().equals(stack.pop())){
        return true;
      }
    }
    return false;
  }

  public String toString(){
    if(isPalin() == true){
      return "is a palinlist." + "\n";
    }
    return "is not a palinlist." + "\n";
  }
}
