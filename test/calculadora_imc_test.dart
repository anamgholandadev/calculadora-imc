import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/utils/classificacao.dart';
import 'package:test/test.dart';

void main() {
  group('classificacaoIMC', () {
    test('IMC abaixo de 18.5 é considerado Magreza', () {
      var pessoa = Pessoa('Alice', 45.0, 1.65);
      expect(classificacaoIMC(pessoa), equals('Magreza moderada'));
    });

    test('IMC entre 18.5 e 24.9 é considerado Saudável', () {
      var pessoa = Pessoa('Bob', 70.0, 1.75);
      expect(classificacaoIMC(pessoa), equals('Saudável'));
    });

    test('IMC entre 25.0 e 29.9 é considerado Sobrepeso', () {
      var pessoa = Pessoa('Charlie', 85.0, 1.80);
      expect(classificacaoIMC(pessoa), equals('Sobrepeso'));
    });

    test('IMC acima de 30.0 é considerado Obesidade', () {
      var pessoa = Pessoa('David', 100.0, 1.70);
      expect(classificacaoIMC(pessoa), equals('Obesidade Grau I'));
    });
  });
}
