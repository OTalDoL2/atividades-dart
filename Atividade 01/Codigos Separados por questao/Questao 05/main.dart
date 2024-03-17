import 'dart:io';


void executaOperacao(int num1, int num2, String op){
  switch(op){
    case "+":
      int resultado = num1 + num2;
      print("O resultado da soma dos números $num1 e $num2 é $resultado"); 
    break;
    case "-":
      int resultado = num1 - num2;
      print("O resultado da subtração dos números $num1 e $num2 é $resultado"); 
    break;
    case "*":
      int resultado = num1 * num2;
      print("O resultado do produto dos números $num1 e $num2 é $resultado"); 
    break;
    case "/":
      double resultado = num1 / num2;
      print("O resultado da divisão dos números $num1 e $num2 é $resultado"); 
    break;
    default:
      print("Operação inválida!"); 
    break;
  }
}



void main() {
  print("Digite o valor 1:");
  int num1 = int.parse(stdin.readLineSync()!);
 
  print("Digite o valor 2:");
  int num2 = int.parse(stdin.readLineSync()!);
 
  print("Escolha a operação que deseja realizar:");
  print("Digite '+' para adição");
  print("Digite '-' para subtração");
  print("Digite '*' para multiplicação");
  print("Digite '/' para divisão");
  
  String operacao = stdin.readLineSync()!;
  executaOperacao(num1, num2, operacao);
  
}