import 'dart:io';

void main() {
  var listaOriginal = [1,2,3,5];
  var listaFinal = [];
  listaOriginal.forEach((numero) {
    if(numero % 2 != 0){
      listaFinal.add(0);
    } else{
      listaFinal.add(numero);
    }
  });

  print('Lista Original: $listaOriginal');
  print('Lista Final: $listaFinal');
}