import 'package:get/get.dart';

import '../controllers/level_detail_controller.dart';

class LevelDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LevelDetailController>(
      LevelDetailController(),
    );
  }
}
