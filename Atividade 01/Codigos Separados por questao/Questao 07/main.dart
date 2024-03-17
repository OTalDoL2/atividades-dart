import 'dart:io';

void main() {
  var diasSemana = ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'];

  int condicaoSaidaLoop = 0;
  int inputDia = 0;
  while (condicaoSaidaLoop == 0){
    print('Digite um número de 1 a 7, e te retorno o dia da semana correspondente.');
    int dia = int.parse(stdin.readLineSync()!);
    
    if(dia < 1 || dia > 7){
      continue;
    }
    else{
      condicaoSaidaLoop = 1;
      inputDia = dia - 1;
    }
  }
  print('O dia equivalente à ${inputDia} é ${diasSemana[inputDia]}');
}