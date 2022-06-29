import 'dart:io';

main() {
  Professor professor = Professor(
    id: 1,
    nome: 'Igor',
    cpf: '111',
    email: 'fulaninho@gmail.com',
  );

  print(professor.id);
  print(professor.nome);
  print(professor.cpf);
  print(professor.email);
}

class Professor {
  int id;
  String nome;
  String cpf;
  String email;

  Professor(
      {required this.id,
      required this.nome,
      required this.cpf,
      required this.email});
}
