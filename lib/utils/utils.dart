import 'dart:convert';
import 'dart:io';

String lerString() {
  return stdin.readLineSync(encoding: utf8) ?? "";
}

double lerDouble() {
  while (true) {
    var input = lerString();
    try {
      return double.parse(input);
    } catch (e) {
      print("Valor inválido. Insira um número válido:");
    }
  }
}
