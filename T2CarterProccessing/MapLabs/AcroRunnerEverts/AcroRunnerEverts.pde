import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup(){
  Acronyms a = new Acronyms();
  String[] str = loadStrings("Acro.txt");
  String[] str2 = loadStrings("Acro2.txt");
  

  
  for(String s : str){
    a.putEntry(s);
  }
  
    //println(a);
  for(String c : str2){
    println(a.convert(c));
  }
}
