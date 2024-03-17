import 'dart:io';

void main() {
  print('Digite as medidas de cada lado, para receber como retorno o tipo de triângulo.');
  print('Lado A: ');
  String ladoA = stdin.readLineSync()!; 
  print('Lado B: ');
  String ladoB = stdin.readLineSync()!; 
  print('Lado C: ');
  String ladoC = stdin.readLineSync()!;

  if (ladoA == ladoB && ladoB == ladoC){
    print('É um Triângulo Equilátero, uma vez que tem a medida de seus lados congruentes.');
  } else if(ladoA == ladoB || ladoB == ladoC || ladoA == ladoC){
    print('É um Triângulo Isósceles, uma vez que tem a medida de dois de seus lados congruentes.');
  } else {
    print('É um Triângulo Escaleno, uma vez que tem a medida de dois de seus lados incongruentes.');
  }

}