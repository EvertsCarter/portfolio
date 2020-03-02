public class Part implements Comparable<Part>
{
  private String make, model, theRest="";
  private int year;

  public Part(String line) 
  {
    String[] parts = line.split(" ");
    make = parts[parts.length-3];
    model = parts[parts.length-2];
    year = Integer.parseInt(parts[parts.length-1]);
    for(int i=0; i<parts.length-3; i++){
      theRest += parts[i] + " ";
    }
  }

  //have to have compareTo if implements Comparable
  public int compareTo( Part other )
  {
    if(this.make.compareTo(other.make) > 0){
      return 1;
    } else if(this.make.compareTo(other.make) < 0){
      return -1;
    }else if(this.year > other.year){
      return 1;
    } else if(this.year < other.year){
      return -1;
    }else if(this.theRest.compareTo(other.theRest) > 0){
      return 1;
    } else if(this.theRest.compareTo(other.theRest) > 0){
      return -1;
    }
    return 0;
  }

  public String toString()
  {
    return make + " " + model + " " + year + " " + theRest;
  }
}
