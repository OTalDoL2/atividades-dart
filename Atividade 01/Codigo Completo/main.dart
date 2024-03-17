import 'dart:io';

void primeiraQuestao(){
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

void segundaQuestao(){
  print("Digite um número, para saber se tal número é par ou ímpar");
  
  int numero = int.parse(stdin.readLineSync()!);
  
  if(numero % 2 == 0){
    print("par");
  } else{
    print("ímpar");

  }
}

void terceiraQuestao(){
  print("Digite um ano, para saber se é um ano bissexto");
  String ano = stdin.readLineSync()!;
  String dezena = ano.substring(2,4);
  if(int.parse(dezena) % 4 == 0){
    print("É bissexto");
  } else{
    print("Não é bissexto");
  }
}

void quartaQuestao(){
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

void quintaQuestao(){
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

void sextaQuestao(){
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

void setimaQuestao(){
  var diasSemana = ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'];

  int condicaoSaidaLoop = 0;
  int diaInt = 0;
  while (condicaoSaidaLoop == 0){
    print('Digite um número de 1 a 7, e te retorno o dia da semana correspondente.');
    int dia = int.parse(stdin.readLineSync()!);
    
    if(dia < 1 || dia > 7){
      continue;
    }
    else{
      condicaoSaidaLoop = 1;
      diaInt = dia - 1;
    }
  }
  print('O dia equivalente à ${diaInt} é ${diasSemana[diaInt]}');
}

void oitavaQuestao() {
  print('Digite as medidas de cada lado, para receber como retorno o tipo de triângulo.');
  print('Lado A: ');
  String ladoA = stdin.readLineSync()!; 
  print('Lado B: ');
  String ladoB = stdin.readLineSync()!; 
  print('Lado C: ');
  String ladoC = stdin.readLineSync()!;

  if (ladoA == ladoB && ladoB == ladoC){
    print('É um Triângulo Equilátero, uma vez que tem a medida de seus lados congruentes.');
  } else if(ladoA == ladoB || ladoB == ladoC || ladoA == ladoC){
    print('É um Triângulo Isósceles, uma vez que tem a medida de dois de seus lados congruentes.');
  } else {
    print('É um Triângulo Escaleno, uma vez que tem a medida de dois de seus lados incongruentes.');
  }
}

void main(){
  int condicaoSaidaLoop = 0;
  while(condicaoSaidaLoop == 0){
    print('\nEscolha qual questão deseja executar');
    print('Digite 1 - Verificar se um número é positivo, negativo ou zero');
    print('Digite 2 - Verificar se um número é par ou ímpar');
    print('Digite 3 - Verificar se um ano é bissextoerificar se um ano é bissexto');
    print('Digite 4 - Calcular o desconto do salário de um funcionário');
    print('Digite 5 - Verificar o tipo de operação');
    print('Digite 6 - Verificar a letra digitada');
    print('Digite 7 - Determinar o dia da semana');
    print('Digite 8 - Verificar o tipo de triângulo');
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
        setimaQuestao();
      break;

      case '8':
        oitavaQuestao();
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