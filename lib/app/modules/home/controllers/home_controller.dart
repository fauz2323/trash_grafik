import 'package:get/get.dart';
import 'package:trash_graphic/app/data/model/chart_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  List<ChartModel> organik = [
    ChartModel("05 Juni", 35.2),
    ChartModel("06 Juni", 47.8),
    ChartModel("07 Juni", 71.4),
    ChartModel("08 Juni", 58.5),
    ChartModel("09 Juni", 22.9),
    ChartModel("10 Juni", 63.4),
  ];

  List<ChartModel> anorganik = [
    ChartModel("05 Juni", 56.3),
    ChartModel("06 Juni", 77.8),
    ChartModel("07 Juni", 84.1),
    ChartModel("08 Juni", 41.4),
    ChartModel("09 Juni", 75.9),
    ChartModel("10 Juni", 62.8),
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
