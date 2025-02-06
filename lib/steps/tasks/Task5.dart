import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task5 extends TaskInterface {
  @override
  void run() {
    for (var i = 7; i <= 98; i += 7) {
      print(i);
    }
  }

}