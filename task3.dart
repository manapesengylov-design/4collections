//3. Задание — Средний балл
void main() {
  List<int> grades = [4, 5, 3, 5, 4, 5, 2];

  int sum = 0;

  for (int grade in grades) {
    sum += grade;
  }

  double average = sum / grades.length;

  print('Сумма оценок: $sum');
  print('Средний балл: $average');
}