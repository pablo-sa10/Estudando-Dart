import './transporte.dart';
import './Viagem.dart';

void main() {
  Viagem viagem = Viagem(locomocao: Transporte.andando);

  print(viagem.consultarLocaisVisitados);
  viagem.visitar("museu");
  print(viagem.consultarLocaisVisitados);
  viagem.alterarlocaisVisitado = 10;
  print(viagem.consultarLocaisVisitados);
}



