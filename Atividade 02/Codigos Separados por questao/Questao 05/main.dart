import 'dart:io';


void main() {
  print('Digite quantas notas o usuário possui: ');
  int quantidadeNotas = int.parse(stdin.readLineSync()!);
  int contador = 0;
  int somaNotas = 0;
  
  while(contador < quantidadeNotas){
    print('Digite a ${1 + contador}ª nota: ');
    somaNotas += int.parse(stdin.readLineSync()!);
    contador += 1;
  }

  double media = somaNotas / quantidadeNotas;
  print('A média do aluno é $media');
}