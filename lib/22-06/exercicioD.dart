import 'dart:io';

main() {
  var peca = Peca(
    nome: "Camiseta",
    descricao: "Camiseta Nike",
    precoVenda: 195,
  );
  peca._codigo = 1;
  print(peca._codigo);
  print(peca.nome);
  print(peca.descricao);
  peca._precoCusto = 150;
  print(peca._precoCusto);
  print(peca.precoVenda);

}

class Peca {
  late int _codigo;
  String nome;
  String descricao;
  late double _precoCusto;
  double precoVenda;

  String getNome(){
    return nome;
  }

  String getDescricao(){
    return descricao;
  }

  double getPrecoVenda(){
    precoVenda = ((precoCusto * 0.3) + precoCusto);
    return precoVenda;
  }
  
  set codigo(int codigo){
    if(codigo > 0) _codigo = codigo;
  }

  int get codigo{
    var codigo = _codigo;
    return codigo;
  }

  set precoCusto(double precoCusto){
    if(precoCusto > 0) _precoCusto = precoCusto;
  }

  double get precoCusto{
    var precoCusto = _precoCusto;
    return precoCusto;
  }

  Peca({required this.nome, required this.descricao, required this.precoVenda});
}
