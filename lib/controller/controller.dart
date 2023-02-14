import 'package:get/get.dart';

class Controller extends GetxController {
  //String title = "Usando getX";

  static Controller get to => Get.find();

  int value = 0;

  void increment() {
    value++;
    update();
  }

  void decrement() {
    value--;
    update();
  }
}
