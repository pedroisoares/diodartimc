import 'package:test/test.dart';
import '../bin/diodartimc.dart'; 

void main() {
  group('IMC Calculator', () {
    test('Calculating IMC', () {
      final pessoa = Pessoa('João', 70, 1.75);
      final imc = pessoa.calcularIMC();

      expect(imc, closeTo(22.86, 0.01)); // Espera-se um valor IMC próximo a 22.86
    });

    test('IMC Classification', () {
      final pessoa1 = Pessoa('Maria', 50, 1.60);
      final pessoa2 = Pessoa('Carlos', 90, 1.80);

      final classificacao1 = pessoa1.classificarIMC();
      final classificacao2 = pessoa2.classificarIMC();

      expect(classificacao1, 'Saudável');
      expect(classificacao2, 'Sobrepeso');
    });
  });
}
