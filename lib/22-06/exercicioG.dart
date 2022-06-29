import 'dart:io';

main(){
  Estado estado = Estado(nome: 'Paraná', sigla: 'PR');
  Cidade cidade = Cidade(nome: 'Paranavaí', estado: estado);

  Funcionario funcionario = Funcionario(
    nome: 'Igor Luigi',
    cpf: '111.111.111-11',
    telefone: '9999-9999',
    cidade: cidade,
  );

  print(funcionario.nome);
  print(funcionario.cidade.nome);
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

class Funcionario{
  String nome;
  String cpf;
  String telefone;
  Cidade cidade;

  Funcionario({required this.nome, required this.cpf, required this.telefone, required this.cidade});
}