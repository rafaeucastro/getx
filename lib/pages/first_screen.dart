import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/get_pages.dart';

import '../controller/controller.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Usando getX"),
      ),
      body: GetBuilder(
          init: Controller(),
          builder: (_) {
            print("--GetBuilder builder");
            return Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: _.decrement,
                        icon: const Icon(
                          Icons.minimize,
                          size: 40,
                        ),
                      ),
                      Text(
                        Get.find<Controller>().value.toString(),
                        style: const TextStyle(fontSize: 35),
                      ),
                      IconButton(
                        onPressed: controller.increment,
                        icon: const Icon(
                          Icons.add,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      //Get.to(SecondScreen(), arguments: controller.value);
                      Get.toNamed(Pages.SECOND, arguments: controller.value);
                    },
                    icon: const Icon(Icons.next_plan_rounded),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
