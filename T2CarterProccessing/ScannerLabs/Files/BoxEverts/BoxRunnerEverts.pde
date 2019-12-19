import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import static java.lang.System.*;

void setup(){
  try{
    Scanner file = new Scanner(new File("Desktop/T2CarterProccessing/ScannerLabs/Files/BoxEverts/box.txt"));
    int size = file.nextInt();
    file.nextLine();
    for(int i=0; i<size; i++)
    {
       String num = file.nextLine();
       Box oe = new Box(num);
       println(oe);
    } 
  }
  
  catch(Exception e){
    println(e);
    
  }
  
}
