import 'dart:io';

void main() {
  var numeros = [1,2,3,5];
  numeros.forEach((numero) {
    if(numero % 2 == 0){
     print('O número $numero é par!');
    } else{
     print('O número $numero é ímpar!');
    }
  });
}