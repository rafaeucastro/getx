import 'package:get/get.dart';

class Controller extends GetxController {
  //String title = "Usando getX";

  static Controller get to => Get.find();

  RxInt value = 0.obs;

  void increment() {
    value++;
    //update(); -not needed when using Rx e .obs
  }

  void decrement() {
    value--;
    //update(); -not needed when using Rx e .obs
  }
}
