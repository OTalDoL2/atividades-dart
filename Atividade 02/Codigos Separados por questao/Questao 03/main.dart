import 'dart:io';

void main() {

  int tabuada =int.parse(stdin.readLineSync()!);
  for(int i = 1; i <= 10; i++) {
    print('$tabuada X $i = ${tabuada * i}');
  }

}