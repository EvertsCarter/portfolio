import static java.lang.System.*;

public class OddOrEven
{
  private int number;

  public OddOrEven()
  {
    number = 0;
  }

  public OddOrEven(int num)
  {
    number = num;
  }

  public void setNum(int num)
  {
    number = num;
  }

  public boolean isOdd( )
  {
    if(number % 2 == 0){
      return false;
    }else{
     return true; 
    }
  }

  public String toString()
  {
    if(isOdd()){
      return number + " is odd. \n\n";
    }else{
      return number + " is even. \n\n";
    }
  }
}
