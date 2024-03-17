import 'dart:io';

void main() {
  int contador = 0;
  for(int i = 1; i < 100; i += 2){
    contador += i;
  }
  print(contador);
}