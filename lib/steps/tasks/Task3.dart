import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task3 extends TaskInterface {
  @override
  void run() {
    for (var i = 1; i <= 10; i++) {
      print("3*$i=${3 * i}");
    }
  }

}