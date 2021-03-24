import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../modules/test/test-controller.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio(BaseOptions(
        baseUrl: "https://6057407a055dbd0017e8492b.mockapi.io/api")));
    Get.lazyPut(() => TestController());
  }
}
