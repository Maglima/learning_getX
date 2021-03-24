import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:learning_getx/application/bindings/application-binding.dart';
import 'package:learning_getx/application/modules/home/home-binding.dart';
import 'package:learning_getx/application/modules/home/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialBinding: ApplicationBinding(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      //home: Container(),
      getPages: [
        GetPage(
          name: '/',
          binding: HomeBinding(),
          page: () => HomePage(Get.find()),
        ),
      ],
      initialRoute: "/",
    );
  }
}
