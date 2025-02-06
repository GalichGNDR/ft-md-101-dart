import 'package:ft_md_101_dart/steps/utils/DartInterfaceParent.dart';

class DartInterfaceChild implements DartInterfaceParent {
  @override
  void printMe() {
    print("DartInterfaceChild: hi!");

  }

}