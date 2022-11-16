import 'package:get/get.dart';

class UserProvider extends GetConnect {
  // Get request
  Future<Response> getUser(int id) => get('http://youapi/users/$id');
  // Post request

  // Post request with File
  Future<Response> postTest(Map data) {
    var datax = post("https://astroboy.my.id/api/users/login-mobile", data);
    return datax;
  }
}
