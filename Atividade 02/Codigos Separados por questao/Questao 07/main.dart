import 'dart:io';

void main() {
  var itens = [1,2,3,5];
  print('Digite um número para eu verificar se está dentro da lista');
  int numeroInput = int.parse(stdin.readLineSync()!);
  String resultado = 'não está';
  itens.forEach((item) {
    if(numeroInput == item){
     resultado = 'está';
    }
  });
  print('O número $numeroInput $resultado dentro da lista!');
}