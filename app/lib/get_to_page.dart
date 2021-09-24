import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetTo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Get.to()')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Get.back()',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
