import 'dart:io';
import 'dart:math';

main(){
  Salario salario = Salario(horasTrabalhadas: 200, salario: 10000);

  HoraExtra horaExtra = HoraExtra(horasExtrasTrabalhadas: 2, salario: 10000, horasTrabalhadas: 200);

  AumentoSalario aumentoSalario = AumentoSalario(porcentagemAumento: 10, salario: 10000, horasTrabalhadas: 200);

  DescontoSalario descontoSalario = DescontoSalario(porcentagemDesconto: 10, salario: 10000, horasTrabalhadas: 200);

  print(salario.horasTrabalhadas);
  print(salario.salario);

  print(horaExtra.horasExtrasTrabalhadas);
  print(horaExtra.getSalarioHoraExtra());

  print(aumentoSalario.porcentagemAumento);
  print(aumentoSalario.getAumentoSalario());

  print(descontoSalario.porcentagemDesconto);
  print(descontoSalario.getDescontoSalario());


}

class Salario{
  final double horasTrabalhadas;
  final double salario;

  double calcularValorHora(){
    var valorHora = (salario / horasTrabalhadas);
    return valorHora;
  }

  Salario({required this.horasTrabalhadas, required this.salario});
}

class HoraExtra extends Salario{
  double horasExtrasTrabalhadas;

  double getSalarioHoraExtra(){
    var valorHora = (salario / horasTrabalhadas);
    var salarioHoraExtra = (((valorHora * 1.5) * horasExtrasTrabalhadas) + salario);
    return salarioHoraExtra;
  }

  HoraExtra({required this.horasExtrasTrabalhadas, required salario, required horasTrabalhadas}) : super(horasTrabalhadas: horasTrabalhadas.toDouble(), salario: salario.toDouble());
}

class AumentoSalario extends Salario{
  double porcentagemAumento;

  double getAumentoSalario(){
    var salarioFinal = ((salario * porcentagemAumento) + salario);
    return salarioFinal;
  }

  AumentoSalario({required this.porcentagemAumento, required salario, required horasTrabalhadas}) : super(horasTrabalhadas: horasTrabalhadas.toDouble(), salario: salario.toDouble()); 
}

class DescontoSalario extends Salario{
  double porcentagemDesconto;

  double getDescontoSalario(){
    var salarioFinal = ((salario * porcentagemDesconto) - salario);
    return salarioFinal;
  }

  DescontoSalario({required this.porcentagemDesconto, required salario, required horasTrabalhadas}) : super(horasTrabalhadas: horasTrabalhadas.toDouble(), salario: salario.toDouble()); 
}


