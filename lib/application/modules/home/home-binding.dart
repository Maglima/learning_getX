import 'package:get/get.dart';
import 'package:learning_getx/application/modules/home/controller/home-controller.dart';
import 'package:learning_getx/application/repositories/user-repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRepository(Get.find()));
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
