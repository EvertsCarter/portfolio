import static java.lang.System.*;

class SiteName implements Comparable<SiteName>
{
  
  private String name;
  private String url;
  
  public SiteName(String n, String u){
    name = n;
    url = u;
  }
  
  public int compareTo(SiteName other){
    
    
    if(this.url.charAt(0) > other.url.charAt(0)){
      return 1;
    }else if(this.url.charAt(0) < other.url.charAt(0)){
      return -1;
    }
    
    if(this.name.charAt(0) > other.name.charAt(0)){
      return 1;
    }else if(this.name.charAt(0) < other.name.charAt(0)){
      return -1;
    }
    return 0;
  }
  
  public String getName(){
    return name;
  }
  
  public String toString(){
    return name + " " + url;
  }
}
