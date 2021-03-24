import 'package:get/get.dart';

class TestController extends GetxController {
  final _count = 0.obs;
  int get count => _count.value;

  @override
  void onInit() {
    _count.value = 1;
    _count.refresh();
    super.onInit();
  }

  void increment() {
    _count.value++;
    _count.refresh();
  }
}
