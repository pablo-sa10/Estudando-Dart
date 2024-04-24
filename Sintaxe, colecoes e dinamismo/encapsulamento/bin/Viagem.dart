import './transporte.dart';

class Viagem {
  //eu posso acessar essa variavel sem isntanciar uma classe
  static String codigo = '1234';
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> destino = <String>{};
  Map<String, dynamic> regPreco = {};
  int _totaisLocaisVisitados = 0;

  Viagem({required this.locomocao});

  int get consultarLocaisVisitados{
    return _totaisLocaisVisitados;
  }

  void set alterarlocaisVisitado(int novaQtd){
    _totaisLocaisVisitados = novaQtd;
  }

  printCodigo() {
    print(codigo);
  }

  //usando enum como parametro, porem com switch para a escabilidade ficar mais simplificada
  void escolherMeioTransporteEnumSwitch(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print("vou de carro");
        break;
      case Transporte.bike:
        print("vou de bike");
        break;
      case Transporte.andando:
        print("vou a pé");
        break;
      default:
        print("transporte inválido");
        break;
    }
  }

  void visitar(String local) {
    destino.add(local);
    _totaisLocaisVisitados += 1;
  }

  void registrarPecoVisita(String local, dynamic preco){
    regPreco[local] = preco;
  }
}
