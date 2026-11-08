//2. Задание — Добавление имён
import 'dart:io';

void main() {
  List<String> names = [];

  for (int i = 0; i < 3; i++) {
    print('Введите имя:');
    String name = stdin.readLineSync()!;

    names.add(name);
  }

  print('Все имена: $names');
}