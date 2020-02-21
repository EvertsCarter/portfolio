import static java.lang.System.*;
import java.util.*;

void setup(){
  UniquesDupes test = new UniquesDupes();
  println("Original List: " + "a b c d e f g h a b c d e f g h i j k");
  println("Uniques: " + test.getUniques("a b c d e f g h a b c d e f g h i j k"));
  println("Dupes: " + test.getDupes("a b c d e f g h a b c d e f g h i j k"));
  
}
