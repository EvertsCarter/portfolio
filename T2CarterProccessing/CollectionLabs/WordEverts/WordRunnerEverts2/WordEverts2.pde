import static java.lang.System.*;

 class Word implements Comparable<Word>
{
  private String word;

  public Word( String s )
  {
    word = s;
  }

  public int compareTo(Word other)
  { 
    if(this.word.length()>other.word.length()){
      return 1;
    }else if(this.word.length()<other.word.length()){
      return -1;
    }else if(this.word.compareTo(other.word)<1){
      return -1;
    }else{
      return 0;
    }
   
    
  }

  public String toString()
  {
    return word;
  }
}
