import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup(){
  SpanishToEnglish se = new SpanishToEnglish();
  String[] str = loadStrings("Span.txt");
  String[] str2 = loadStrings("translate.txt");
  for(String s: str){
    se.putEntry(s);
  }
  for(String t: str2){
    println(se.translate(t));
  }
}
