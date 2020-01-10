import java.util.List;
public class WordList {
  public List<Word> myList;
  public WordList(String []tokens) {
    myList=new ArrayList<Word>();
    for (String s : tokens) {
      myList.add(new Word(s));
    }
  }
  public String getWord(int i){ return myList.get(i).getWord();}
}
