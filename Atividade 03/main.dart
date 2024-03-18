class Carro {
  String? marca;
  String? modelo;
  String? cor;
  String? combustivel;
  bool ligado = false;

  

  void ligar(){
    print('ligando carro');
    ligado = true;
  }

  void acelerar(){
    print('acelerando carro');
  }

  void frear(){
    print('freando carro');
  }
}


void main(){
  Carro carro1 = Carro();

}