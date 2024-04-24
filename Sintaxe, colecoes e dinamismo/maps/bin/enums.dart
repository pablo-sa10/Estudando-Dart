void main() {
  //maps
  Map<String, dynamic> regPreco = {};
  regPreco["SP"] = 1200;
  regPreco["RJ"] = 1500;

  dynamic variavel = regPreco["SP"];

  print(variavel);

  var pessoa = Pessoa("Pablo", 21, true);

  var pessoaMap = pessoa.toMap();

  print(pessoaMap);
  print(pessoaMap["idade"]);
}

class Pessoa{
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String, dynamic> toMap(){
     return {
      'nome': nome,
      'idade': idade,
      'estaAutenticada': estaAutenticada,
     };
  }
}
