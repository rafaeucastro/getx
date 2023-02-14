import 'package:get/get.dart';
import 'package:getx_example/pages/second_screen.dart';
import 'package:getx_example/pages/first_screen.dart';

class Pages {
  static const String FIRST = '/';
  static const String SECOND = '/second-screen';

  static List<GetPage> pages = [
    GetPage(
      name: FIRST,
      page: () => FirstScreen(),
    ),
    GetPage(
      name: SECOND,
      page: () => SecondScreen(),
    ),
  ];
}
