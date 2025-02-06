import 'DartException.dart';

class DartExceptionExample {
  void run() {
    String? str;

    try {
      throw DartException();
    } on DartException catch (e) {
      print('DartExceptionExample: DartException $e');
    } catch (e) {
      print('DartExceptionExample: $e');
    } finally {
      print("DartExceptionExample: Run every time ");
    }
  }
}