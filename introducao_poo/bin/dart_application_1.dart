void main() {
  String fruta = "laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "doce cítrico";
  int diasColheita = 40;
  bool isMadura;

  Fruta fruta01 = Fruta(fruta, peso, cor, sabor, diasColheita);
  Fruta fruta02 = Fruta("uva", 100, "roxo", "doce", 30);

  print(fruta01.nome);
  fruta01.madura(40);
  fruta02.madura(50);
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasColheita, {this.isMadura});

  madura(int diasMadura){
    isMadura = diasColheita >= diasMadura;
    print("a fruta $nome foi colheita em $diasColheita dias, e precisa de $diasMadura dias para comer. etsa madura? $isMadura");
  }
}
