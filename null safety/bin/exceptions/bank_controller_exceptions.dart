class SenderIdInvalidException implements Exception{
  static const String report = "SenderIdInvalidException";
  String idSender;
  SenderIdInvalidException({required this.idSender});

  @override
  String toString(){
    return "report\nID Sender: $idSender";
  }
}
class ReciverIdInvalidException implements Exception{
  String idReceiver;
  ReciverIdInvalidException({required this.idReceiver});
}
class SenderNotAuthenticatedException implements Exception{
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});
}

class ReceiverNotAuthenticatedException implements Exception{
  static const String report = "ReceiverNotAuthenticatedException";
  String idReceiver;
  ReceiverNotAuthenticatedException({required this.idReceiver});

  @override
  String toString(){
    return "report\nID Sender: $idReceiver";
  }
}
class SenderBalanceLowerThanAmountException implements Exception{
  String idSender;
  double amount;
  double balance;
  SenderBalanceLowerThanAmountException({required this.idSender, required this.balance, required this.amount,});
}