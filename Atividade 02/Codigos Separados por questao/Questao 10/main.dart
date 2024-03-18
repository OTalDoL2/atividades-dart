import 'dart:io';

void main() {
  var listaOriginal = [1,2,3,5];
  int somaNumeros = 0;
  listaOriginal.forEach((numero) {
    somaNumeros += numero;
  });

  print('Lista Original: $listaOriginal');
  print('A soma dos valores da lista é igual à $somaNumeros');
}