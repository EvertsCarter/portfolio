import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup(){
  Relatives r = new Relatives();
  String [] str = loadStrings("rels.txt");
  
  for(String s: str){
    r.setPersonRelative(s);
    //println(r.toString());
  }
  //println(r.map);
  
}
