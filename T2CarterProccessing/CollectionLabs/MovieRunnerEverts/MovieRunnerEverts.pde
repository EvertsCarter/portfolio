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
List<Movie> myList;
int up = 0;

void setup(){
  frameRate(1);
  size(1500,500);
  
  try{
    Scanner file = new Scanner(new File("Desktop/T2CarterProccessing/CollectionLabs/MovieRunnerEverts/Movie.txt"));
    myList = new ArrayList<Movie>();
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
void draw(){
  background(0);
  textSize(14);
  
  text("Score: " + myList.get(up).getRating(), 10, 25);
  text("Review: " + myList.get(up).getReview(), 10, 50);
  text("Word: " + myList.get(up).getWord(), 10, 75);
  text("Word Match : " + myList.get(up).check(), 10, 100);
  text("Word Count: " + myList.get(up).total(), 10, 125);
  rect(1, 150, myList.get(up).total()*4, 25);
  
  up++;
  if(up >= 8529){
    up=0;
  }

}
