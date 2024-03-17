import 'dart:io';

void main() {

  print("Digite um ano, para saber se é um ano bissexto");
  String ano = stdin.readLineSync()!;
  String dezena = ano.substring(2,4);
  if(int.parse(dezena) % 4 == 0){
    print("É bissexto");
  } else{
    print("Não é bissexto");
  }

}