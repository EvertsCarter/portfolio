void setup(){
  PalinList test = new PalinList("one two three two one");
  test.isPalin();
  System.out.println("[one, two, three, two, one] " + test);
  
  test.setList("1 2 3 4 5 one two three four five");
  test.toString();
  System.out.println("[1, 2, 3, 4, 5, one, two, three, four, five] " + test);
  
  test.setList("a b c d e f g x y z g f h");
  test.toString();
  System.out.println("[a, b, c, d, e, f, g, x, y, z, g, f, h,] " + test);
  
  test.setList("racecar is racecar");
  test.toString();
  System.out.println("[racecar, is, racecar] " + test);
  
  test.setList("1 2 3 a b c c b a 3 2 1");
  test.toString();
  System.out.println("[1, 2, 3, a, b, c, c, b, a, 3, 2, 1] " + test);
  
  test.setList("chicken is a chicken");
  test.toString();
  System.out.println("[chicken, is, a, chicken] " + test);
}
