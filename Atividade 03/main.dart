class Carro {
  String? marca;
  String? modelo;
  String? cor;
  String? combustivel;
  bool ligado = false;
  double velocidade = 0;
  var cambio = ['Neutro', '1', '2', '3', '4', '5', 'R'];

  void ligar() {
    if (ligado == false) {
      print('ligando carro');
      ligado = true;
    }
  }

  void desligar() {
    if (ligado == true) {
      print('desligando carro');
      ligado = false;
    }
  }

  void acelerar() {
    if (velocidade >= 0 && velocidade < 200) {
      velocidade++;
      print('Velocidade: $velocidade');
    }
  }

  void desacelerar() {
    if (velocidade >= 0 && velocidade < 200) {
      velocidade--;
      print('Velocidade: $velocidade');
    }
  }

  void frear() {
    if (velocidade >= 0 && velocidade < 200) {
      velocidade -= 10;
      if (velocidade < 1) {
        velocidade = 0;
      }
      print('Velocidade: $velocidade');
    }
  }
}

void main() {
  Carro carro1 = Carro();
  carro1.marca = 'Audi';
  carro1.modelo = 'A5';
  carro1.cor = 'Vermelho';
  carro1.combustivel = 'Gasolina';
  carro1.ligar();
  carro1.acelerar();
  carro1.acelerar();
  carro1.acelerar();
  carro1.acelerar();
  carro1.acelerar();
  carro1.acelerar();
  carro1.acelerar();
  carro1.acelerar();
  carro1.acelerar();
  carro1.acelerar();
  carro1.desacelerar();
  carro1.frear();
}
