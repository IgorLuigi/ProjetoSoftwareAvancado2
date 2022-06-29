
import 'dart:math';
import 'dart:io';

main() {
  Estado estado = Estado(nome: 'PARANÁ', sigla: 'PR');
  Cidade cidade = Cidade(nome: 'PARANAVAÍ', estado: estado);

  Aluno aluno = Aluno(
      nome: 'José',
      numero: 1,
      valido: true,
      registroAcademico: 1,
      cidade: cidade);
  //var nome = stdin.readLineSync()!;
  //var numero = int.parse(stdin.readLineSync()!);
  //var valido = stdin.readLineSync()! == 'S';
  //var anoNascimento = int.parse(stdin.readLineSync()!);

  //var minhaClasse3 = MinhaClasse(nome, numero, valido, anoNascimento);
  //print(minhaClasse3.nome);
  //MinhaClasse minhaClasse = new MinhaClasse();

  //MinhaClasse minhaClasse2 = MinhaClasse();

  //var minhaClasse3 = MinhaClasse();
  //minhaClasse3.getNome();
  //minhaClasse3.nome;
  //minhaClasse3.nome = 'José';
  //minhaClasse3.numero = 50;
  //minhaClasse3.valido = true;

  //print(minhaClasse3.nome);
}

class Pessoa {
  final String nome;
  final int numero;
  final bool valido;
  final Cidade cidade;

  Pessoa(
      {required this.nome,
      required this.numero,
      required this.valido,
      required this.cidade});
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

class Aluno extends Pessoa {
  final int registroAcademico;
  Aluno(
      {required String nome,
      required int numero,
      required bool valido,
      required Cidade cidade,
      required this.registroAcademico})
      : super(nome: nome, numero: numero, valido: valido, cidade: cidade);
}



  //final String nome;
  //final int numero;
  //final bool valido;
  //int _anoNascimento;

  //set anoNascimento(int anoNascimento) {
  //if (anoNascimento > 0) _anoNascimento = anoNascimento;
  //}

  //int get idade {
  //var anoAtual = DateTime.now().year;
  //var idade = anoAtual - _anoNascimento;
  //return idade;
  //}

  //String get nome {
  //return _nome;
  //}

  //set nome(String nome) {
  //_nome = nome;
  //}

  //String getNome() {
  // return _nome;
  //}

  //void setNome(String nome) {
  //_nome = nome;
  //}

  //MinhaClasse(this.nome, this.numero, this.valido, this._anoNascimento);
//}
