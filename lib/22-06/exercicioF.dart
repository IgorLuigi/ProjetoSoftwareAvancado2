import 'dart:io';

main(){
  Estado estado = Estado(nome: 'Paraná', sigla: 'PR');
  Cidade cidade = Cidade(nome: 'Maringá', estado: estado);

  print(cidade.nome);
  print(estado.nome);

}

class Estado {
  String nome;
  String sigla;

  Estado({required this.nome, required this.sigla});
}

class Cidade {
  String nome;
  Estado estado;

  Cidade({required this.nome, required this.estado});
}