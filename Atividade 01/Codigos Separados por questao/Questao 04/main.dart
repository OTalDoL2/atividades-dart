import 'dart:io';

void main() {

  print("Digite o valor do seu salário, para saber o valor do desconto");
  int salario = int.parse(stdin.readLineSync()!);
  double desconto = 0;

  if (salario > 2000) {
    desconto = salario * (15 / 100);
  } else if (salario > 1000){
    desconto = salario * (10 / 100);
  } else{
    desconto = salario * (5 / 100);
  }
  
  print("desconto será de ${desconto}, logo você receberá ${salario - desconto}");

}