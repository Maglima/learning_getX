import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:learning_getx/application/modules/home/controller/home-controller.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController;

  const HomePage(
    this._homeController, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(() => Text(_homeController.users.length.toString() +
              " " +
              _homeController.teste)),
        ),
        body: Obx(() => ListView.builder(
              itemCount: _homeController.users.length,
              itemBuilder: (context, index) {
                var user = _homeController.users[index];

                return Text(user.name);
              },
            )));
  }
}
