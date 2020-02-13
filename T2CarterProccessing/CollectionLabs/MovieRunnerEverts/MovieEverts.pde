import static java.lang.System.*;
import java.util.ListIterator;

public class Movie implements Comparable<Movie> {
  private int rating, index = 0;
  private String review;
  private List <String> wordList;

  public Movie(int rat, String rev) {
    rating = rat;
    review = rev;
    try {
      Scanner file = new Scanner(new File("Desktop/T2CarterProccessing/CollectionLabs/MovieRunnerEverts/WordList.txt"));
      wordList = new ArrayList<String>();
      int num = file.nextInt();
      file.nextLine();
      for (int i=0; i<num; i++) {
        wordList.add(file.next());
      }
      file.close();
    }
    catch(Exception e) {
      println(e);
    }
  }

  public int compareTo(Movie other) {
    if (rating > other.rating) {
      return 1;
    } else if (rating < other.rating) {
      return -1;
    }
    return 0;
  }

  public int getRating() {
    return rating;
  }

  public String getReview() {
    return review;
  }
  
  public String getWord(){
    if(!check()){
      index = (int)random(wordList.size());
    }
    return wordList.get(index); 
  }

  public boolean check() {
    if (myList.get(up).getReview().contains(wordList.get(0))) {
      return true;
    } else {
      return false;
    }
  }
  
  public int total(){
    int count = 0;
    for(int i=0; i<myList.size(); i++){
      if(myList.get(i).getReview().contains(getWord())){
        count++;
      }
    }
    return count;
  }

  public String toString() {
    return rating + " " + review;
  }
}
