void main() {
  List<String> destinos = [];
  String destino = "Rio de janeiro";
  String destino2 = "São Paulo";

  destinos.add(destino);
  destinos.add(destino2);
  //print(destinos);
  List<int> num = [1, 2, 3, 4, 1, 2];
  Set<int> numSemRepetir = {};

  numSemRepetir.addAll(num);

  print(numSemRepetir);

  Set<String> mano = resgistrarDestino(destino, destino2);
  print(mano);
}

Set<String>resgistrarDestino(String destino, String destino2) {
  Set<String> resgistroVisitados = <String>{};
  resgistroVisitados.add(destino);
  resgistroVisitados.add(destino2);
  return resgistroVisitados;
}
