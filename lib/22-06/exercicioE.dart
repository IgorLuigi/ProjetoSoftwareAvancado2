import 'dart:io';

main(){
  Carro carro = Carro("Nissan GTR", 2000);
  print(carro._anoFabricacao);
  print(carro.tempoUso);
  print(carro.nome);
}

class Carro {
  String nome;
  int _anoFabricacao;

  set anoFabricacao(int anoFabricacao){
    if(anoFabricacao > 0) _anoFabricacao = anoFabricacao;
  }

  int get tempoUso {
    var anoAnual = DateTime.now().year;
    var tempoUso = anoAnual - _anoFabricacao;
    return tempoUso;
  }

  String getNome(){
    return nome;
  }

  int getAnoFabricacao(){
    return _anoFabricacao;
  }

  Carro(this.nome, this._anoFabricacao);
}