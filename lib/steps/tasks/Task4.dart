import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';
import 'dart:io';

class Task4 extends TaskInterface {
  @override
  void run() {

    final number = 5;
    print("Введенное целое положительное число: $number");

    if (number != null && number > 0) {
      final sum = (number * (number + 1)) ~/ 2;
      print("Сумма чисел от 1 до $number равна $sum");
    } else {
      print("Ошибка: введено некорректное число.");
    }

  }

}