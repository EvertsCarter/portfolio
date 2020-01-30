import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;

  void setup(){
    try{
      Scanner file = new Scanner(new File("Desktop/T2CarterProccessing/CollectionLabs/PersonEverts/Person.txt"));
      List<Person> myList = new ArrayList<Person>();
      int num = file.nextInt();
      file.nextLine();
      for(int i=0; i<num; i++){
        Person p = new Person(file.nextLine());
        myList.add(p);
      }
      
      file.close();
      Collections.sort(myList);
      for(int i = myList.size()-1; i>-1; i--){
        println(myList.get(i));
      }
      
    }

    

    
    catch(Exception e){
      println(e);
    }
    
  }
  
  
