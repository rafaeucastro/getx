import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

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

class MyApp extends StatelessWidget {
  final controller = Get.put(Controller());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("--MyApp builder");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Usando getX"),
        ),
        body: GetBuilder(
            init: Controller(),
            builder: (_) {
              print("--GetBuilder builder");
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: _.decrement,
                        icon: const Icon(
                          Icons.minimize,
                          size: 40,
                        )),
                    Text(
                      Get.find<Controller>().value.toString(),
                      style: const TextStyle(fontSize: 35),
                    ),
                    IconButton(
                        onPressed: controller.increment,
                        icon: const Icon(
                          Icons.add,
                          size: 40,
                        )),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
