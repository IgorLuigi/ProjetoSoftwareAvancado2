import 'dart:io';

main() {
  Aluno aluno =
      Aluno(ra: '12345', nome: 'Igor', cpf: '111', telefone: '99999-9999');

  print(aluno.ra);
  print(aluno.nome);
  print(aluno.cpf);
  print(aluno.telefone);
}

class Aluno {
  final String ra;
  final String nome;
  final String cpf;
  final String telefone;

  Aluno(
      {required this.ra,
      required this.nome,
      required this.cpf,
      required this.telefone});
}
