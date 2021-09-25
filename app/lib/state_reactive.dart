import 'package:app/state_reactive_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateReactive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final reactiveController = Get.put(ReactiveController());

    return Scaffold(
      appBar: AppBar(title: Text('GetX State reactive 방식')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* GetX() 사용 */
            // GetX<ReactiveController>(
            //   builder: (_) => Text(
            //     'clicks: ${_.count2.value}',
            //     style: TextStyle(
            //       fontSize: 30,
            //     ),
            //   ),
            // ),
            /* Obx() 사용 */
            Obx(() {
              return Text(
                'clicks: ${reactiveController.count2.value}',
                style: TextStyle(
                  fontSize: 30,
                ),
              );
            }),
            TextButton(
              onPressed: reactiveController.increment2,
              child: Text(
                'increment2',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
