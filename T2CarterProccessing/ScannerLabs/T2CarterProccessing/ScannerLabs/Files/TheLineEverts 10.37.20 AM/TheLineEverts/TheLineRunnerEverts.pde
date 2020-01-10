import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import static java.lang.System.*; 

void setup(){
  try{
  Scanner file = new Scanner(new File("Desktop/T2CarterProccessing/ScannerLabs/Files/TheLineEverts 10.37.20 AM/TheLineEverts/lineFiles.txt"));
    int size = file.nextInt();
    file.nextLine();
    for(int i=0; i<size; i++)
    {
      String num = file.nextLine();
      TheLine l = new TheLine(num);
      println(l);
    }
  }
  
  catch(Exception e){
    println(e);
  }
  
}
