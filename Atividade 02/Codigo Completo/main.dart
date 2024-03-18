import 'dart:io';

void primeiraQuestao(){
  int numero = 1;
  while(numero <= 10){
    print(numero);
    numero++;
  }
}

void segundaQuestao(){
  int numero = 10;
 
  while(numero > 0){
    print(numero);
    numero--;
  }
}

void terceiraQuestao(){
  print('Digite o número cuja tabuada deseja visualizar: ');
  int tabuada =int.parse(stdin.readLineSync()!);
  for(int i = 1; i <= 10; i++) {
    print('$tabuada X $i = ${tabuada * i}');
  }
}

void quartaQuestao(){
  int contador = 0;
  for(int i = 1; i < 100; i += 2){
    contador += i;
  }
  print(contador);
}

void quintaQuestao(){
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

void sextaQuestao(){
  int loop = 0;
  var itemList = [];
  while(loop == 0){
    print('Qual ação deseja executar?');
    print('1- Adicionar um item â lista');
    print('2- ler o(s) item(ns) da lista');
    print('3- finalizar aplicação');
    int choice = int.parse(stdin.readLineSync()!);
    switch(choice){
      case 1:
      print('\nDigite o item que deseja adicionar: \n');
      String item = stdin.readLineSync()!;
      itemList.add(item);
      break;
      case 2:
        print('\n\nLista: ');
        print(itemList);
        for(int i = 0; i < itemList.length; i++){
          print('- ${itemList[i]}');
        }
        print('\n\n');
      break;
      case 3:
        print('Obrigado por testar minha aplicação!');
        loop = 1;
      break;
      default:
        print('Opção inválida, digite novamente!');
      break;
    }
  }
}

void setimaQuestao(var listaNumeros){
  // var itens = [1,2,3,5];
  print('Digite um número para eu verificar se está dentro da lista');
  int numeroInput = int.parse(stdin.readLineSync()!);
  String resultado = 'não está';
  listaNumeros.forEach((numero) {
    if(numeroInput == numero){
     resultado = 'está';
    }
  });
  print('O número $numeroInput $resultado dentro da lista!');
}

void oitavaQuestao(var listaNumeros) {
  // var numeros = [1,2,3,5];
  listaNumeros.forEach((numero) {
    if(numero % 2 == 0){
     print('O número $numero é par!');
    } else{
     print('O número $numero é ímpar!');
    }
  });
}

void nonaQuestao(var listaNumeros) {
  // var listaOriginal = [1,2,3,5];
  var listaFinal = [];
  listaNumeros.forEach((numero) {
    if(numero % 2 != 0){
      listaFinal.add(0);
    } else{
      listaFinal.add(numero);
    }
  });

  print('Lista Original: $listaNumeros');
  print('Lista Final: $listaFinal');
}

void decimaQuestao(var listaNumeros) {
  int somaNumeros = 0;
  listaNumeros.forEach((numero) {
    somaNumeros += int.parse(numero);
  });

  print('Lista Original: $listaNumeros');
  print('A soma dos valores da lista é igual à $somaNumeros');
}

void main(){
  int condicaoSaidaLoop = 0;
  var listaNumeros = [1,3,5,2,4,8,7];
  while(condicaoSaidaLoop == 0){
    print('\nEscolha qual questão deseja executar');
    print('Digite 1 - Escreva um programa em Dart que imprima os números de 1 a 10 usando um loop `while`.');
    print('Digite 2 - Escreva um programa em Dart que imprima os números de 10 a 1 usando um loop `do while`.');
    print('Digite 3 - Escreva um programa em Dart que imprima a tabuada de multiplicação de um número fornecido pelo usuário, de 1 a 10, usando um loop `for`.');
    print('Digite 4 - Escreva um programa em Dart que calcule a soma dos números ímpares de 1 a 100 e imprima o resultado, usando um loop `for`.');
    print('Digite 5 - Escreva um programa em Dart que leia as notas de um aluno (quantidade de notas fornecida pelo usuário) e calcule a média, usando um loop `while` ou `do while`.');
    print('Digite 6 - Escreva um programa em Dart que crie uma lista de compras e imprima cada item da lista, usando um loop `for`.');
    print('Digite 7 - Escreva um programa em Dart que verifique se um número fornecido pelo usuário está presente em uma lista de números, usando um loop `foreach`.');
    print('Digite 8 - Escreva um programa em Dart que leia uma lista de números e imprima apenas os números pares, usando um loop `foreach`.');
    print('Digite 9 - Escreva um programa em Dart que substitua todos os números ímpares em uma lista por zero e imprima a lista resultante, usando um loop `foreach`.');
    print('Digite 10 - Escreva um programa em Dart que calcule a soma de todos os elementos de uma lista de números, usando um loop `foreach`.');
    print('Digite outra tecla finalizar a aplicação');

    String escolha = (stdin.readLineSync()!);
    switch(escolha){
      case '1':
        primeiraQuestao();
      break;

      case '2':
        segundaQuestao();
      break;

      case '3':
        terceiraQuestao();
      break;

      case '4':
        quartaQuestao();
      break;

      case '5':
        quintaQuestao();
      break;

      case '6':
        sextaQuestao();
      break; 

      case '7':
        setimaQuestao(listaNumeros);
      break;

      case '8':
        oitavaQuestao(listaNumeros);
      break;

      case '9':
        nonaQuestao(listaNumeros);
      break;

      case '10':
        decimaQuestao(listaNumeros);
      break;

      default:
        print('Obrigado por testar a aplicação!');
        print('Se possível, aceito um feedback pessoalmente ou no email abaixo:');
        print('lucas.ramos_dev@outlook.com');
        condicaoSaidaLoop = 1;
      break;

    }

  }
}