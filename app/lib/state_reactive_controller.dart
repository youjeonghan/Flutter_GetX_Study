import 'package:get/get.dart';

class ReactiveController extends GetxController {
  var count2 = 0.obs;
  // var count2 = Rx<int>(0);
  // var count2 = RxInt(0);

  void increment2() => count2.value++;

  @override
  void onInit() {
    super.onInit();

    // count2가 처음으로 변경되었을 때만 호출된다.
    once(count2, (_) {
      print('$_이 처음으로 변경되었습니다.');
    });
    // count2가 변경될 때마다 호출된다.
    ever(count2, (_) {
      print('$_이 변경되었습니다.');
    });
    // count2가 변경되다가 마지막 변경 후, 1초간 변경이 없을 때 호출된다.
    debounce(
      count2,
      (_) {
        print('$_가 마지막으로 변경된 이후, 1초간 변경이 없습니다.');
      },
      time: Duration(seconds: 1),
    );
    // count2가 변경되고 있는 동안, 1초마다 호출된다.
    interval(
      count2,
      (_) {
        print('$_가 변경되는 중입니다.(1초마다 호출)');
      },
      time: Duration(seconds: 1),
    );
  }
}
