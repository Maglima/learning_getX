import 'package:get/get.dart';

import 'modules/home/home-binding.dart';
import 'modules/home/view/home_page.dart';
import 'modules/page2/view/page2.dart';

List<GetPage> get getPages {
  return [
    GetPage(
      name: '/',
      binding: HomeBinding(),
      page: () => HomePage(
        Get.find(),
        Get.find(),
      ),
    ),
    GetPage(
      name: '/page2',
      page: () => Page(
        Get.find(),
      ),
    ),
  ];
}
