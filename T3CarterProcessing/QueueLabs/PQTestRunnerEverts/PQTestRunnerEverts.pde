void setup(){
  PQTester str = new PQTester("one two three four five six seven");
  println("toString() - " + str);
  println("getMin() - " + str.getMin());
  println("getNaturalOrder" + str.getNaturalOrder());
}
