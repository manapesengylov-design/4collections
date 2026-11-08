//4. Задание — Товары на складе
import 'dart:io';

void main() {
  Map<String, int> products = {
    'Телефон': 10,
    'Ноутбук': 5,
    'Планшет': 8,
    'Наушники': 15
  };

  print('Введите название товара:');
  String product = stdin.readLineSync()!;

  if (products.containsKey(product)) {
    print('Количество на складе: ${products[product]}');
  } else {
    print('Такого товара нет на складе');
  }
}