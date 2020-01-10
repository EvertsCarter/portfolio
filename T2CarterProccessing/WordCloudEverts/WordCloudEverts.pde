String fileContents [];
String rawText;
String [] tokens;
int rand;
WordList wList;
StringParser parser;

  
void setup() {
  size(500, 500);
  fileContents=loadStrings("WordCloud.txt");
  rawText = join(fileContents, " ");
  rawText = rawText.toLowerCase();
  tokens = rawText.split("[^\\w]+");
  wList=new WordList(tokens); 
  parser = new StringParser();
  println(tokens);
  println("Words: " + parser.countWords());
  println("Vowels: " + parser.countVowels());
  println("Syllables: " + parser.countSyllables());
  println("Sentences: " + parser.countSentences());
  
  rand = (int)(Math.random()*tokens.length);
  
  //println("Number of Words: " + countWords());
}

void draw(){
  background(0);
  //text(wList.getWord(rand), 30, 30);
}
