import java.util.Scanner;
import static java.lang.System.*;

public class Average
{
  private String line;

  Average() {
    line = "";
  }

  Average(String l) {
    line = l;
  }

  private void setLine() {
    int toRemove = line.indexOf(""+getLowest());
    line = line.substring(0, toRemove)+line.substring(toRemove+2);
  }




  private int getLowest() {
    int lowest=Integer.MAX_VALUE;
    String[] strs = line.split(" ");
    for(int i=0; i<strs.length; i++){
      if(parseInt(strs[i])<lowest)
        lowest=parseInt(strs[i]);
    }
    return lowest;
  }

  public double getAvg()
  {
    double avg=0.0;
    
    for(String s : line.split(" ")){
      avg+=parseInt(s);
    }println("length: "+line.split(" ").length);
    
    return avg/line.split(" ").length;
  }

  public String getLine() {
    return line;
  }

  public String toString() {
    setLine();
    return getLine() + "\n average = "+getAvg() + "\n\n";
  }
}
