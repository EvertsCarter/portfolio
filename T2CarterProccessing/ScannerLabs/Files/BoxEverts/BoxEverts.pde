import static java.lang.System.*;

public class Box
{
  private String let;
  private int size;

  Box() {
    let = "";
    size = 0;
  }

  Box(String x, int y) {
    let = x;
    size = y;
  }

  public String toString()
  {
    String output="";
    for (int i=0; i<size; i++) {
      for (int j=0; j<size; j++) {
        output+=let;
      }
      output += "\n";
    }
    return output+"\n";
  }
}
