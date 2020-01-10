import java.util.Scanner;
import static java.lang.System.*;
import java.io.IOException;
import java.io.File;

void setup(){
  try{
    Scanner file = new Scanner(new File("Desktop/T2CarterProccessing/ScannerLabs/Files/AverageEverts/Average.txt"));
    int size = file.nextInt();
    file.nextLine();
    for(int i=0; i<size; i++)
    {
       String x = file.nextLine();
       Average oe = new Average(x);
       print(oe + " ");
    }
  }
  catch(Exception e){
    println(e);
  }
  
}
