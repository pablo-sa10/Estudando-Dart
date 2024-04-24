import 'dart:io';

void main() {
  // Legumes mandioca = Legumes("macaxeira", 100.20, "amarelo", true);
  // Citrica limao = Citrica("Limao", 100, "azedo", "verde", 50, 9);
  // mandioca.printAlimento();
  // limao.madura(40);
  // limao.existerefri(true);

  print("Escreva o noem da fruta\n");
  String? banana = stdin.readLineSync();
  if (banana != null) {
    print("fruta $banana\n");
    Fruta fruta = Fruta(banana, 100, "amarelo", "doce", 50);
    fruta.madura(20);
    fruta.printAlimento();
  }
}

class Fruta extends Alimento {
  String sabor;
  int diasColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, this.sabor, this.diasColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  madura(int diasMadura) {
    isMadura = diasColheita >= diasMadura;
    print(
        "a fruta $nome foi colheita em $diasColheita dias, e precisa de $diasMadura dias para comer. etsa madura? $isMadura");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este(a) $nome pesa $peso gramas e tem a cor $cor");
  }
}

class Legumes extends Alimento {
  bool isCozido;

  Legumes(String nome, double peso, String cor, this.isCozido)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isCozido) {
      print("Está cozido");
    } else {
      print("precisa cozinahr");
    }
  }
}

class Citrica extends Fruta {
  double nivelAzedo;

  Citrica(String nome, double peso, String sabor, String cor, int diasColheita,
      this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasColheita);

  void existerefri(bool existe) {
    if (existe) {
      print("existe refrigerante de $nome");
    } else {
      print("não existe refrigerante de $nome");
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleo;

  Nozes(String nome, double peso, String cor, String sabor, int diasColheita,
      this.porcentagemOleo)
      : super(nome, peso, cor, sabor, diasColheita);
}
