import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
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
    if(result){
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
    print("o usuário ${e.idSender} tentou enviar ${e.amount}, porém sua conta possui apenas ${e.balance}");
  }
}
