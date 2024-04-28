import 'dart:ffi';

void main() {
  // Future myFuture = Future(() {
  //   print("de volta para o futuro");
  //   return 21;
  // }).then((value) => print(value));

  // futureFunc()
  //     .then((value) => print('minha função vale: $value'))
  //     .onError((error, stackTrace) => print("um erro aconteceu"))
  //     .whenComplete(() => print("acabou o future"));

  myFutureError(2, 1).then((value) => print(value));
  print("terminou a main");
}

Future<int> futureFunc() async {
  print("eu tenho uma função do futuro");
  await Future.delayed(Duration(seconds: 5));
  return 12;
}

Future<int> myFutureError(int a, int b) async{
  try{
    if(a > b){
      throw Exception();
    }
    print("função funcional");
    await Future.delayed(Duration(seconds: 3));
    return 42;
  }
  catch(e){
    print('erro: $e');
    return 42;
  }
  finally{
    print("o futuro terminou");
  }
}
