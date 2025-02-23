import 'dart:math';

import 'package:ft_md_101_dart/ClassInstance.dart';
import 'package:ft_md_101_dart/steps/tasks/Task1.dart';
import 'package:ft_md_101_dart/steps/tasks/Task2.dart';
import 'package:ft_md_101_dart/steps/tasks/Task3.dart';
import 'package:ft_md_101_dart/steps/tasks/Task4.dart';
import 'package:ft_md_101_dart/steps/tasks/Task5.dart';
import 'package:ft_md_101_dart/steps/utils/DartAbstractChild.dart';
import 'package:ft_md_101_dart/steps/utils/DartChild.dart';
import 'package:ft_md_101_dart/steps/utils/DartConstructor.dart';
import 'package:ft_md_101_dart/steps/utils/DartEnum.dart';
import 'package:ft_md_101_dart/steps/utils/DartException.dart';
import 'package:ft_md_101_dart/steps/utils/DartExceptionExample.dart';
import 'package:ft_md_101_dart/steps/utils/DartFinal.dart';
import 'package:ft_md_101_dart/steps/utils/DartInterfaceChild.dart';
import 'package:ft_md_101_dart/steps/utils/DartInterfaceParent.dart';
import 'package:ft_md_101_dart/steps/utils/DartMethod.dart';
import 'package:ft_md_101_dart/steps/utils/DartPackage.dart';
import 'package:ft_md_101_dart/steps/utils/DartSignature.dart';

class DartBase {
  void run() {
    print("DartBase: hello world!");

    _stepConf();
    _stepDataType();
    _stepClassInstance();
    _stepPackage();
    _stepMethod();
    _stepSignature();
    _stepInheritance();
    _stepConditionalOperator();
    _stepArray();
    _stopLoop();
    _stepSwitch();
    _stepConstructor();
    _stepFinal();
    _stepDartEnum();
    _stepInterface();
    _stepAbstract();
    _stepException();

    Task1().run();
    print("\n");
    Task2().run();
    print("\n");
    Task3().run();
    print("\n");
    Task4().run();
    print("\n");
    Task5().run();
  }

  void _stepConf() {
    print("_stepConf: This is step 1");
  }

  void _stepDataType() {
    String str = "st";
    int intVar = 1;
    double doubleVar = 1.0;

    print("_stepDataType: $str");
    print("_stepDataType: $intVar");
    print("_stepDataType: $doubleVar");

    double sum = intVar + doubleVar;
    print("_stepDataType: $sum");

    DartBase db = DartBase();
    db._stepConf();
  }

  void _stepClassInstance() {
    ClassInstance ci = ClassInstance();
    ci.run();
  }
  void _stepPackage() {
    DartPackage dp = DartPackage();
    dp.run();
  }
  void _stepMethod() {
    var dn = DartMethod();
    dn.run();
  }
  
  void _stepSignature() {
    var ds = DartSignature("first var", "second var");
    ds.run();
    ds.setAndRun("first after set", "second after set");

    ds.first = "first after set";
    ds.second = "second after set";
    ds.run();
  }

  void _stepInheritance() {
     var dc = DartChild();
     dc.run();
  }

  void _stepConditionalOperator() {
    var random = Random();
    var intVar = random.nextInt(10);
    var maxVar = 5;

    print("_stepConditionalOperator: intVar is $intVar");

    if( intVar > maxVar) {
      print("_stepConditionalOperator: $intVar > $maxVar");
    }

    if( intVar < maxVar) {
      print("_stepConditionalOperator: $intVar < $maxVar");
    }

    if( intVar != maxVar) {
      print("_stepConditionalOperator: $intVar != $maxVar");
    }

    if( intVar == maxVar) {
      print("_stepConditionalOperator: $intVar == $maxVar");
    }

    if (intVar % 2 == 0) {
      print("_stepConditionalOperator: $intVar is even");
    } else {
      print("_stepConditionalOperator: $intVar is odd");
    }
  }

  void _stepArray() {
    var array = [];
    array.add(1);
    array.add('String value');
    print("_stepArray: $array");

    List<String> stringArray = [];
    stringArray = List.filled(0, 'fill');
    stringArray = List<String>.empty();
    stringArray = <String>[];

    stringArray.add("value");
    print('_stepArray: $stringArray');

    stringArray.removeAt(0);
    print("_stepArray: $stringArray");

    stringArray.add("value");
    print('_step Array: $stringArray');

    stringArray.remove("value");
    print('_step Array: $stringArray');

    stringArray.add("value");
    stringArray.add("value");
    stringArray.add("value");
    stringArray.add("value");
    stringArray.add("value");
    
    stringArray.forEach( (e) {
      print("_stepArray: $e");;
    });
  }

  void _stopLoop() {
    List<int> intArray = [];
    for(int i = 0; i< 100; i++){
      intArray.add(Random().nextInt(100));
    }

    print("_stepLoop: $intArray");

    List<int> onlyEven = [];
    for(int el in intArray){
      if(el % 2 == 0){
        onlyEven.add(el);
      }
    }

    print("_stepLoop: $onlyEven");
  }

  void _stepSwitch() {
    var intVal = Random().nextInt(5);
    switch (intVal) {
      case 1:
        print("_stepSwitch: 1");
        break;
      case 2:
        print("_step Switch: 2");
        break;
      default:
        print("_step Switch: default - $intVal");
    }
  }

  void _stepConstructor() {
    DartConstructor dc = DartConstructor(1, "str");
    dc.run();

    DartConstructor dc1 = DartConstructor(1, "str", 1.1);
    dc1.run();
  }

  void _stepFinal() {
    DartFinal df = DartFinal();
    df.run();
  }

  void _stepDartEnum() {
    var status = DartEnum.NEW;
    print("_stepDartEnum: $status");
  }

  void _stepInterface() {
    DartInterfaceChild dic = DartInterfaceChild();
    dic.printMe();

    DartInterfaceParent dip = DartInterfaceParent();
    dip.printMe();
  }

  void _stepAbstract() {
    DartAbstractChild dac = DartAbstractChild();
    dac.printMe();
  }

  void _stepException() {
    DartExceptionExample dee = DartExceptionExample();
    dee.run();
  }
}