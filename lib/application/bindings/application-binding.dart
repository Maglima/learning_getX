import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio(BaseOptions(
        baseUrl: "https://6057407a055dbd0017e8492b.mockapi.io/api")));
  }
}
