import static java.lang.System.*;

public class TheLine
{
   private String line;

   public TheLine()
   {
     line = "";
   }

   public TheLine(String s)
   {
     line = s;
   }

  public int getLargest()
  {
    int largest = Integer.MIN_VALUE;
    int num = 0;
    Scanner scan = new Scanner(line);
    while(scan.hasNext()){
      num = scan.nextInt();
      if(num>largest){
        largest = num;
      }
    }
    return largest;
  }

  public String toString( )
  {
    return line + " - Largest == " + getLargest() + "\n\n";
  }
}
