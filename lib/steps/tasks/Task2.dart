import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task2 extends TaskInterface {
  @override
  void run() {
    for (int i = 5; i >= 1; i--) {
      print(i);
    }
  }
}