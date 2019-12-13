import java.util.Scanner;
import static java.lang.System.*;

public class LineBreaker
{
  private String line;
  private int breaker;

  public LineBreaker()
  {
    this("", 0);
  }

  public LineBreaker(String s, int b)
  {
    line = s;
    breaker = b;
  }

  public void setLineBreaker(String s, int b)
  {
    line = s;
    breaker = b;
  }

  public String getLine()
  {

    return line;
  }

  public String getLineBreaker()
  {
    String box ="";
    int x = breaker * 2;
    for (int i = 0; i<line.length(); i++) {
      if (x != i) {
        box+=line.substring(i, i+1);
      } else {
        box+="\n";
        x+=breaker*2;
        i--;
      }
    }
  return box;
  }

  public String toString()
  {
    return getLine()+"\n"+ getLineBreaker();
  }
}
