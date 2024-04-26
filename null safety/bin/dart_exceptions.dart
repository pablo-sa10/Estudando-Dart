import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  testeNumeroAleatorio();
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 500, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 100);

    // Observando resultado
    if (result) {
      print("transação concluída com sucesso");
    }
  } on SenderIdInvalidException catch (e) {
    print("o ID ${e.idSender} do remetente não é um ID valido");
  } on ReciverIdInvalidException catch (e) {
    print("o ID ${e.idReceiver} do remetente não é um ID valido");
  } on SenderNotAuthenticatedException catch (e) {
    print("o usuário ${e.idSender} não está autenticado");
  } on ReceiverNotAuthenticatedException catch (e) {
    print("o usuário ${e.idReceiver} não está autenticado");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(
        "o usuário ${e.idSender} tentou enviar ${e.amount}, porém sua conta possui apenas ${e.balance}");
  }
}

//criar uma função q gera numero aleatorios
void testeNumeroAleatorio() {
  Account? usuarioNull = Account(name: "Pablo Moura", balance: 10000, isAuthenticated: true);

  Random rng = Random();

  // for(int i = 0; i < 10; i++){
  //   int numero = rng.nextInt(20);
  //   print(numero);
  // }
  int chance = rng.nextInt(10);
  print("numero gerado $chance");
  if (chance <= 5) {
    usuarioNull.createdAt = DateTime.now(); 
            
  }
  print(usuarioNull.runtimeType);
  print(usuarioNull.balance);
  //print(usuarioNull.createdAt.day)
  print(usuarioNull.createdAt);
}
