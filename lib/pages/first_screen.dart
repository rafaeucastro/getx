import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/get_pages.dart';

import '../controller/controller.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    print("-First Page BUILDER");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Usando getX"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: controller.decrement,
                  icon: const Icon(
                    Icons.minimize,
                    size: 40,
                  ),
                ),
                //Rebuild only this widget when the value changes
                Obx(() => Text(
                      Get.find<Controller>().value.toString(),
                      style: const TextStyle(fontSize: 35),
                    )),
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
      ),
    );
  }
}
