  import static java.lang.System.*;
  
  public class Movie implements Comparable<Movie>{
  private int rating;
  private String review;
  
  public Movie(int rat, String rev){
    rating = rat;
    review = rev;
  }
  
  public int compareTo(Movie other){
    if(rating > other.rating){
      return 1;
    }else if(rating < other.rating){
      return -1;
    }
    return 0;
  }
  
  public int getRating(){
    return rating;
  }
  
  public String getReview(){
    return review;
  }
  
  public String toString(){
    return rating + " " + review;
  }
      
}
