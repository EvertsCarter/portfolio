public class Word{
  private String name;
  private int count;
  //Word(){
  //  name="";
  //  count=0;
  //}
  Word(String x){
    this.name=x;
    this.count=0;
  }
  
  public void setName(String x){
  this.name=x;
}
 public void setCount(int i){
  this.count=i; 
}
  public int getCount(){
  return this.count; 
}
public String getName(){
  return this.name; 
}
public int getLength(){
  return this.name.length();
}
}
