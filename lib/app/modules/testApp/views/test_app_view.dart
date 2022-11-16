import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/test_app_controller.dart';

class TestAppView extends GetView<TestAppController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestAppView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          TextFormField(
            controller: controller.a,
          ),
          TextFormField(
            controller: controller.b,
          ),
          ElevatedButton(
              onPressed: () => controller.send(), child: Text('send'))
        ],
      )),
    );
  }
}
