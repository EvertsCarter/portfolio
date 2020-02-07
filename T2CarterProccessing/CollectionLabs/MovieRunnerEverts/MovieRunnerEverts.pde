import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
import java.util.ListIterator;
String [] file;
String rawText;
String [] tokens;

void setup(){
  try{
    Scanner file = new Scanner(new File("Desktop/T2CarterProccessing/CollectionLabs/MovieRunnerEverts/Movie.txt"));
    List<Movie> myList = new ArrayList<Movie>();
    int num = file.nextInt();
    file.nextLine();
      for(int i=0; i<num; i++){
        Movie p = new Movie(file.nextInt(), file.nextLine());
        myList.add(p);
      }
      file.close();
  } 
  catch(Exception e){
    println(e);
  } 
}
