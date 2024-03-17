import 'dart:io';

void main() {
  print("Digite um número, para saber se tal número é par ou ímpar");
  
  int numero = int.parse(stdin.readLineSync()!);
  
  if(numero % 2 == 0){
    print("par");
  } else{
    print("ímpar");

  }

}