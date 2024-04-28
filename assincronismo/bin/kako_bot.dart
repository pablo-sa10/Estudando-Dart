
import 'dart:io';

import 'questions/time_questions.dart';
import 'timming/eperanado_time.dart';

void main() async {
  String kakoBot = 'KakoBOT:\n';
  var a = true;
  String usuario = '';

  print('-- Iniciando o KakoBOT, aguarde..--');
  BotClock().clock(2);

  print('KakoBOT:\n Oi :) \n Como posso ajudar?');
  do {

    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(1);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(kakoBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      await BotClock().clock(3);
      TimeQuestions(usuario).timeQuestion();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotClock().clock(2);
      print(kakoBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(kakoBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando KakoBOT--');
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
