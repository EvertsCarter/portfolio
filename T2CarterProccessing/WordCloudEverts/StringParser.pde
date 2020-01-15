public class StringParser {

  public StringParser() {
    
  }
  public int countWords() {
    return tokens.length;
  }

  public int countVowels() {
    for(int i=0; i<tokens.length; i++){
      tokens = rawText.split("[^aeiouy]+");
    }
    return tokens.length;
  }

  public int countSyllables() {
    int count = 0;
    for(int i=0; i<tokens.length; i++){
    tokens = rawText.split("[e][\\s]");
    count++;
    }
    return countVowels() - count;
  }

  public int countSentences() {
    return rawText.split(".!").length;
  }
}
