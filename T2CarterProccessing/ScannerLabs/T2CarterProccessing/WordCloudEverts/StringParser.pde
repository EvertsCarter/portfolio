public class StringParser {

  public StringParser() {
    
  }
  public int countWords() {
    return tokens.length;
  }

  public int countVowels() {
    for(int i=0; i<tokens.length; i++){
      tokens = rawText.split("[^aeiouy]");
    }








    return 0;
  }
  /**
   * Get the total number of syllables in the document (the paragraph). 
   * To count the number of syllables in a word, use the following rules:
   *       Each contiguous sequence of one or more vowels is a syllable, 
   *       with the following exception: a lone "e" at the end of a word 
   *       is not considered a syllable unless the word has no other syllables. 
   *       You should consider y a vowel.
   */

  public int countSyllables() {











    return 0;
  }



  /**
   * Eventually write this one too. Get the number of sentences in the document/paragraph.
   * Sentences are defined as contiguous strings of characters ending in an 
   * end of sentence punctuation (. ! or ?) or the last contiguous set of 
   * characters in the document, even if they don't end with a punctuation mark.
   */

  public int countSentences() {









    return 0;
  }
}
