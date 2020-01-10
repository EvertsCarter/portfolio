import static java.lang.System.*;

public class Social
{
   private String socialNum;

  public Social()
  {
    socialNum = "";
  }

  public Social(String soc)
  {
    socialNum = soc;
  }

  public void setSocial(String soc)
  {
    socialNum = soc;
  }

  public int getSum()
  { 
    int sum = 0;
    int num =0;
    Scanner scan = new Scanner(socialNum).useDelimiter("-");
    while(scan.hasNext()){
      num = scan.nextInt();
      sum += num;
    }
    return sum;
  }

  public String toString()
  {
    return "SS# " + socialNum + " has a sum of " +  getSum();
  }
}
