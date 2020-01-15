String fileContents [];
String rawText;
String [] tokens;
int rand;
int randx;
int randy;
WordList wList;
StringParser parser;

  
void setup() {
  size(500, 500);
  fileContents=loadStrings("Desktop/T2CarterProccessing/WordCloudEverts/Heart.txt");
  rawText = join(fileContents, " ");
  rawText = rawText.toLowerCase();
  tokens = rawText.split("[^\\w]+");
  wList=new WordList(tokens); 
  parser = new StringParser();
  //println(tokens);
  println("Words: " + parser.countWords());
  println("Vowels: " + parser.countVowels());
  println("Syllables: " + parser.countSyllables());
  println("Sentences: " + parser.countSentences());
  
  rand = (int)(Math.random()*tokens.length);
  randx = (int)(Math.random()*400);
  randy = (int)(Math.random()*400);
}

void draw(){
  background(0);
  fill(200, 200, 200);
  rect(0, 350, 225, 400);
  fill(0);
  textSize(25);
  text("Words: " + parser.countWords(), 15, 385);
  text("Vowels: " + parser.countVowels(), 15, 415);
  text("Syllables: " + parser.countSyllables(), 15, 445);
  text("Sentences: " + parser.countSentences(), 15, 475);
  
  for(int i=0;i<tokens.length; i++){
    print(wList.getWord(i) + " ");
    
  }
  
  
  //for(int i=0; i<tokens.length; i++){
  //text(wList.getWord(rand), randx, randy);
  //}
  
  
}
