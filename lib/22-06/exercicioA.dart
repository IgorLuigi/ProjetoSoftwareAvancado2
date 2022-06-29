import 'dart:io';

main() {
  var bola = Bola();
  print("Informe a categoria da bola: ");
  var categoria = stdin.readLineSync()!;

  //Atribuindo valor da variável para a classe
  bola.categoria = categoria;

  //Atribuindo o valor diretamente na classe
  //bola.categoria = stdin.readLineSync()!;

  print(bola.cor);
  print(bola.tamanho);
  print(bola.categoria);
}

class Bola {
  String cor = "preto";
  int tamanho = 10;
  String? categoria;
}
