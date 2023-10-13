import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    return peso / (altura * altura);
  }

  String classificarIMC() {
    double imc = calcularIMC();
    if(imc < 16) {
      return "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      return "Magreza moderada";
    } else if (imc >= 17 && imc < 18.5) {
      return "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      return "Saudável";
    } else if (imc >= 25 && imc < 30) {
      return "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      return "Obesidade Grau I";
    } else if (imc >= 35 && imc < 40) {
      return "Obesidade Grau II (severa)";
    } else {
      return "Obesidade Grau III (mórbida)";
    }
  }
}

void main() {
  print("Digite seu nome: ");
  String nome = stdin.readLineSync().toString();

  print("Digite seu peso (em kg): ");
  double peso = double.parse(stdin.readLineSync().toString());

  print("Digite sua altura (em metros): ");
  double altura = double.parse(stdin.readLineSync().toString());

  if (peso <= 0 || altura <= 0) {
    print("Peso e altura devem ser valores positivos.");
  } else {
    Pessoa pessoa = Pessoa(nome, peso, altura);
    double imc = pessoa.calcularIMC();
    String classificacao = pessoa.classificarIMC();

    print("$nome, seu IMC é: $imc");
    print("Classificação: $classificacao");
  }
}
