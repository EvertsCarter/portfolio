public class Word{
  private String name;
  private int count;
  Word(){
    name="";
    count=0;
  }
  Word(String x){
    name=x;
    count=0;
  }
  
  public String getWord(){ return name; }
  public void setWord(String x){ name=x; }
  public void setCount(int i){ count=i; }
  public int getCount(){ return count; }
}
