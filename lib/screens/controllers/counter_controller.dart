import 'package:get/get.dart';

class CounterController extends GetxController {
  var a = 10.obs;

  void increment() => a++;
  void decrement() => a--;
}
