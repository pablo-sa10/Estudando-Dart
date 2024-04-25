void stack_start() {
  print("started main");
  functionOne();
  print("Finished Main");
}

functionOne() {
  print("started F01");
  functionTwo();
  print("Finished F01");
}

functionTwo() {
  print("started F02");
  for(int i = 1; i <= 5; i++){
    print(i);
    try{
      double amount = double.parse("not a number");
    }on FormatException catch(e){
      print(e.message);
    }
    
  }
  print("Finished F02");
}
