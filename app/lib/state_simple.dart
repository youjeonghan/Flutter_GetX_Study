import 'package:app/state_simple_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateSimple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final simpleController = Get.put(SimpleController());

    return Scaffold(
      appBar: AppBar(title: Text('GetX State simple 방식')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<SimpleController>(
              init: SimpleController(),
              builder: (_) => Text(
                'clicks: ${_.count1}',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            TextButton(
              onPressed: simpleController.increment1,
              child: Text(
                'increment1',
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
