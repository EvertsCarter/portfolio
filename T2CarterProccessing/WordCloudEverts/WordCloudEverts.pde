String fileContents [];
String rawText;
String [] tokens;
int flash = 0;
WordList wList;
StringParser parser;

  
void setup() {
  frameRate(100);
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
  
}

void draw(){
  background(0);
  fill(200, 0, 0);
  rect(0, 350, 225, 400);
  fill(0);
  textSize(25);
  text("Words: " + parser.countWords(), 15, 385);
  text("Vowels: " + parser.countVowels(), 15, 415);
  text("Syllables: " + parser.countSyllables(), 15, 445);
  text("Sentences: " + parser.countSentences(), 15, 475);
  
  fill(255);
  textAlign(CENTER);
  text("A Tell Tale Heart", width/2, 75);
  text("By Edgar Allen Poe", width/2, 125);
  text(wList.getName(flash), width/2, 200);
  textAlign(LEFT);
  
  flash++;
  if(flash >2156){
    flash=0;
  }
   
}
