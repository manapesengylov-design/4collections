//Задание 5. Менеджер задач (To-Do List)  запуск в теменале dart run task5.dart
import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('\n===== МЕНЕДЖЕР ЗАДАЧ =====');
    print('1. Просмотреть задачи');
    print('2. Добавить задачу');
    print('3. Удалить задачу');
    print('4. Выход');

    print('Выберите действие:');
    String choice = stdin.readLineSync()!;

    if (choice == '1') {
      if (tasks.isEmpty) {
        print('Список задач пуст');
      } else {
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
      }
    } 

    else if (choice == '2') {
      print('Введите задачу:');
      String task = stdin.readLineSync()!;

      tasks.add(task);

      print('Задача добавлена!');
    } 

    else if (choice == '3') {
      if (tasks.isEmpty) {
        print('Нет задач для удаления');
      } else {
        print('Введите номер задачи:');

        int? number = int.tryParse(stdin.readLineSync()!);

        if (number == null || number < 1 || number > tasks.length) {
          print('Неверный номер задачи!');
        } else {
          tasks.removeAt(number - 1);
          print('Задача удалена!');
        }
      }
    } 

    else if (choice == '4') {
      print('Программа завершена!');
      break;
    } 

    else {
      print('Неверный выбор!');
    }
  }

}