import java.io.File;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
String [] file;
String rawText;
String [] tokens;

void setup(){
  
  try{
    file = loadStrings("Desktop/T2CarterProccessing/CollectionLabs/SiteNameRunnerEverts/SiteName.txt");
    List<SiteName> myList = new ArrayList<SiteName>();
    rawText = join(file, " ");
    rawText = rawText.toLowerCase();
    tokens = rawText.split("[. ]");
    int num = Integer.parseInt(tokens[0]);
    for (int i=1; i<num*2-1; i+=2) {
      SiteName sn = new SiteName(tokens[i], tokens[i+1]);
      myList.add(sn);
    }
    Collections.sort(myList);
    for (int i=0; i<num-1; i++) {
      println(myList.get(i));
    }
    
  }
  
  catch(Exception e){
    
  }
  
}
