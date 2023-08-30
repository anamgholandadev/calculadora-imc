import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/utils/classificacao.dart';
import 'package:calculadora_imc/utils/utils.dart';

void main(List<String> arguments) {
  print("Vamos calcular seu IMC!");

  print("Insira seu nome:");
  var nome = lerString();

  print("Insira seu peso (em quilos):");
  var peso = lerDouble();

  print("Insira sua altura (em metros):");
  var altura = lerDouble();

  if (peso <= 0) {
    throw ArgumentError("O peso deve ser maior que zero");
  }
  if (altura <= 0) {
    throw ArgumentError("A altura deve ser maior que zero");
  }

  Pessoa pessoa = Pessoa(nome, peso, altura);
  var classificacao = classificacaoIMC(pessoa);
  print("Sua classificação é: $classificacao");
}
