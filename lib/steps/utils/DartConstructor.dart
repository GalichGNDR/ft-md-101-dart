class DartConstructor {
  int varInt;
  String varString;
  double? optionDouble;

  DartConstructor(this.varInt, this.varString, [this.optionDouble]);

  void run(){
  print("Dart Constructor: $varInt, $varString, $optionDouble");
  }
}

