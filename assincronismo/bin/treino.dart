import 'dart:io';
import './timming/eperanado_time.dart';

void main() {
  print("Comece uma conversa");
  String usuario = stdin.readLineSync().toString();

  minhaFunc(usuario)
      .then((value) => print(value))
      .onError((error, stackTrace) => print("um erro ocorreu"));
}

Future<String> minhaFunc(String usuario) async {
  bool a = true;

  while (a) {
    print("carregando...");
    await BotClock().clock(3);
    try {
      if (usuario.runtimeType != String) {
        throw Exception();
      }
      String resposta = "tudo bem e voce?";
      return resposta;
    } catch (e) {
      print("mensagem invalida $e");
      a = false;
      return "erro: $e";
    } finally {
      print("resposta:");
    }
  }
  return "acabou a conversa";
}
