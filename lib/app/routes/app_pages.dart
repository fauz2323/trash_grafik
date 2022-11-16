import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/level_detail/bindings/level_detail_binding.dart';
import '../modules/level_detail/views/level_detail_view.dart';
import '../modules/testApp/bindings/test_app_binding.dart';
import '../modules/testApp/views/test_app_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LEVEL_DETAIL,
      page: () => LevelDetailView(),
      binding: LevelDetailBinding(),
    ),
    GetPage(
      name: _Paths.TEST_APP,
      page: () => TestAppView(),
      binding: TestAppBinding(),
    ),
  ];
}
