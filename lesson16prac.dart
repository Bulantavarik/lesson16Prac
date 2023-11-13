import 'dart:io';
import 'dart:math';

void main() {
  print(fib(5));
}

int fib(int n) {

  int a = 0, b = 1;

  for (int i = 0; i <= n; i++) {
    int prisvoenie = a + b;
    a = b;
    b = prisvoenie;
  }

  return b;
}

void rewitePrimer() {
  var random = Random();
  int a = random.nextInt(10) + 1;
  int b = random.nextInt(10) + 1;

  int pravOtvet = a + b;

  stdout.write("Решите пример: $a + $b = ");
  int otvet = int.parse(stdin.readLineSync()!);

  if (otvet == pravOtvet) {
    print("Правильно!");
    rewitePrimer();
  } else {
    print("Неправильно. Правильный ответ: $pravOtvet ");
    rewitePrimer();
  }
}

void kinKost() {
  var random = Random();
  int kost = random.nextInt(6) + 1;

  print(kost);

  stdout.write("Введите 1, чтобы бросить еще раз, или 2, чтобы закончить: ");
  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    kinKost();
  } else if (choice == 2) {
    print("Wasted");
    kinKost();
  } else {
    print("Некорректный ввод. Пожалуйста, введите 1 или 2.");
    kinKost();
  }
}

void stepen() {
  stdout.write("Введите число которое хотите возвезти в степень: ");
  int chislo = int.parse(stdin.readLineSync()!);

  stdout.write("Введите степень: ");
  int stepen = int.parse(stdin.readLineSync()!);

  int result = chislo * stepen; // ne ponyal kak sdelat'

  print("$chislo в степени $stepen = $result");
}
