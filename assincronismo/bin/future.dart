void main(){

  Future myFuture = Future(() {
    print("de volta para o futuro");
    return 21;
  }).then((value) => print(value));

  futureFunc().then((value) => print('minha função vale: $value'));

  print("terminou a main");
}

Future<int> futureFunc()async{
  print("eu tenho uma função do futuro");
  await Future.delayed(Duration(seconds: 5));
  return 12;
}