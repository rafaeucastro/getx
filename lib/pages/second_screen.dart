import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Center(
        child: Column(
          children: [
            IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_outlined),
            ),
            Text("Valor da tela anterior: ${Get.arguments}"),
          ],
        ),
      ),
    );
  }
}
