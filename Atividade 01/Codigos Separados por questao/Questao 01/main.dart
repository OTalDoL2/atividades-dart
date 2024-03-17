import 'dart:io';

void main() {  
  print("Digite um número, para saber se tal número é positivo, negativo ou igual à zero");

  int num = int.parse(stdin.readLineSync()!);
  
  if(num == 0){ 

    print("É igual a 0");
  } else if(num > 0) {
    print("O número ${num} é positivo");
  }else{
    print("O número ${num} é negativo");
  }

}