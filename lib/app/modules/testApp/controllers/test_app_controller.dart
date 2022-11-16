import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:trash_graphic/app/modules/testApp/controllers/get_connect.dart';

class TestAppController extends GetxController {
  //TODO: Implement TestAppController
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();

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

  send() async {
    Map body = {
      'email': a.text,
      'password': b.text,
    };

    Uri url = Uri.parse("https://astroboy.my.id/api/users/login-mobile");

    final response = await UserProvider().postTest(body);

    print(response.body);
  }
}
