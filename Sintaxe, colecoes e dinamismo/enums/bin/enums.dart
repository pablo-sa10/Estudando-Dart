void main(){
  escolherMeioTransporte(0);
  escolherMeioTransporteEnum(Transporte.bike);
  escolherMeioTransporteEnumSwitch(Transporte.andando);
}

//usando numero como parametro
void escolherMeioTransporte(int locomocao){
  if(locomocao == 0){
    print("vou de carro");
  }else if(locomocao == 1){
    print("vou de bike");
  }else{
    print("vou a pé");
  }
}

//usando enum como parametro pois é melhor para ler
void escolherMeioTransporteEnum(Transporte locomocao){
  if(locomocao == Transporte.carro){
    print("vou de carro");
  }else if(locomocao == Transporte.bike){
    print("vou de bike");
  }else if(locomocao == Transporte.andando){
    print("vou a pé");
  }else{
    print("vou ficar em casa");
  }
}

//usando enum como parametro, porem com switch para a escabilidade ficar mais simplificada
void escolherMeioTransporteEnumSwitch(Transporte locomocao){
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

enum Transporte{
  carro,
  bike,
  andando,
}
