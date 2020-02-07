 import java.util.ListIterator;
 
 public class MovieList{
  private ArrayList <Movie> MovieList;
  private int count;
  
  public MovieList(){
    MovieList = new ArrayList <Movie>();
  }
  
  public int getCount(){
    return count;
  }
  
  public int getAverageScore(){
    int avg=0;
    int count = 0;
    for(Movie i: MovieList){
      avg+=i.getRating();
      count++;
    }
    return avg/count;
  }
  
  public String overallComment(){
    int x = getAverageScore();
    if(x<1){
      return "Don't watch!";
    }else if(x<2 && x>1){
      return "This movie is ok";
    }else if(x > 3.5){
      return "This movie is superb";
    }else{
      return "This movie is perfect";
    }
  }
  
  public void sortMoviesByCount(){
    Collections.sort(MovieList);
  }
  
  public String toString(){
    ListIterator<Movie> it = MovieList.listIterator();
    while(it.hasNext()){
      println(it.next());
    }
    return MovieList.toString() ;
  }
  
}
