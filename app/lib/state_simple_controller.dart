import 'package:get/get.dart';

class SimpleController extends GetxController {
  var count1 = 0;

  void increment1() {
    count1++;
    update();
  }
}
