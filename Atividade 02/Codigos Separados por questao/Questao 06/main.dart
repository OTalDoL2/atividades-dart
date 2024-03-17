import 'dart:io';

void main() {
  int loop = 0;
  var itemList = [];
  while(loop == 0){
    print('Qual ação deseja executar?');
    print('1- Adicionar um item â lista');
    // print('2- Excluir um item da lista');
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