import 'controllers/bank_controller.dart';
import 'models/account.dart';

// void main() {
//   // Criando o banco
//   BankController bankController = BankController();

//   // Adicionando contas
//   bankController.addAccount(
//       id: "Ricarth",
//       account:
//           Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

//   bankController.addAccount(
//       id: "Kako",
//       account:
//           Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

//   // Fazendo transferência
//   bool result = bankController.makeTransfer(
//       idSender: "Kako", idReceiver: "Ricarth", amount: 700);

//   // Observando resultado
//   print(result);
// }

// void main(){
//   //double amount = double.parse("25,33");
//   recursiveFunc(1);
// }

// recursiveFunc(int count){
//   print(count);
//   recursiveFunc(count + 1);
// }

void main() {
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
