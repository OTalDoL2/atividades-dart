import 'dart:io';

void main() {
  var vogal = ['a', 'e', 'i', 'o', 'u'];
  var consoante = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'];

  print('Digite uma letra, para saber se é uma vogal ou uma consoante: ');
  String letra = stdin.readLineSync()!;

  if(vogal.contains(letra.toLowerCase())){
    print('A letra ${letra} uma vogal');
  } else if(consoante.contains(letra.toLowerCase())) {
    print('A letra ${letra} uma consoante');
  } else {
    print('A letra ${letra} não é vogal nem consoante');
  }

}