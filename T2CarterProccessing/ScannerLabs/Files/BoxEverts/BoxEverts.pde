import static java.lang.System.*;

public class Box
{
   private String let;
   private int size;
   
   public Box()
   {
     let = "";
     size = 0;
   }
   
   public Box(String s)
   {
     let = s;
     
   }
   
   public String makeBox(){
     int temp = 0;
     String b = let;
      Scanner scan = new Scanner(let);
    while(scan.hasNext()){
      temp = scan.nextInt();
      for(int i = 0; i<size; i++){
        b = "" + scan.nextInt();
      }
      
      

    }
    return b; 
   }
   

  //make two constructors  

  public String toString()
  {
    String output="";



    //return output+"\n";
    return let + "";
  }
}
