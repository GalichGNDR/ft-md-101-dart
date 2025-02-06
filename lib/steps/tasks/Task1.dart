import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task1 extends TaskInterface {
  @override
  void run() {
    for (int i = 1; i <= 5; i++) {
      print(i);
    }
  }
}