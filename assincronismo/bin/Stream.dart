import 'dart:async';

void main() async{

  StreamSubscription subscription = myStream(1).listen((event) { 
    if(event.isEven){
      print("esse número é par");
    }
  }, onError: (e){
    print("erro $e");
  }, onDone: () => print("finalizado!"),);
  await Future.delayed(Duration(seconds: 3));
  subscription.pause();
  await Future.delayed(Duration(seconds: 3));
  subscription.resume();
  await Future.delayed(Duration(seconds: 3));
  subscription.cancel();
  print("acabou a main");

}

Stream myStream(int interval, [int? maxCount]) async*{
  int i = 1;
  while(i != maxCount){
    print("contagem $i");
    await Future.delayed(Duration(seconds: interval));
    yield i++;
  }
  print("acabou a contagem");
}