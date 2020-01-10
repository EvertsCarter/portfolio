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
  println(parser.countWords());
  println(parser.countVowels());
  
  rand = (int)(Math.random()*tokens.length);
  
  //println("Number of Words: " + countWords());
}

void draw(){
  background(0);
  text(wList.getWord(rand), 30, 30);
}
