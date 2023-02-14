import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/get_pages.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("--MyApp builder");
    return GetMaterialApp(
      initialRoute: '/',
      getPages: Pages.pages,
    );
  }
}
