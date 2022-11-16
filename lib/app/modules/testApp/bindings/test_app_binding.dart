import 'package:get/get.dart';

import '../controllers/test_app_controller.dart';

class TestAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestAppController>(
      () => TestAppController(),
    );
  }
}
