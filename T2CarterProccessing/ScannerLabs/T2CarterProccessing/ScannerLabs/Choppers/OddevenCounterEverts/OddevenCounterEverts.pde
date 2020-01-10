import java.util.Scanner;
import static java.lang.System.*;

public class OddEvenCounter
{
  private String line;

   public OddEvenCounter()
   {
     setLine("");
   }

   public OddEvenCounter(String s)
   {
     line = s;
   }

  public void setLine(String s)
  {
    line = s;
  }

  public int getEvenCount()
  {
    int count= 0;
    Scanner scan = new Scanner(line);
    while(scan.hasNext()){
      if(scan.nextInt()%2 == 0){
      count++; 
      }
    }
    return count;
  }

  public int getOddCount()
  {
    int count= 0;
    Scanner scan = new Scanner(line);
    while(scan.hasNext()){
      if(scan.nextInt()%2 == 1){
      count++; 
      }
    }
    return count;
  }
  
  public String getLine()
  {
    return line;
  }

  public String toString( )
  {
    return getLine()+"\n"+"even count = "+getEvenCount()+"\n"+"odd count = "+getOddCount();
  }
}
