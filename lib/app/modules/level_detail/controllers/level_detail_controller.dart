import 'package:get/get.dart';
import 'package:trash_graphic/app/data/model/chart_model.dart';

class LevelDetailController extends GetxController {
  //TODO: Implement LevelDetailController

  var chartModel = <ChartModel>[].obs;
  var jenis;
  @override
  void onInit() {
    super.onInit();
    jenis = Get.arguments['jenis'];
    for (var element in Get.arguments['data']) {
      chartModel.add(element);
    }
    print(chartModel);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
