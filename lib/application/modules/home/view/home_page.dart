import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:learning_getx/application/modules/home/controller/home-controller.dart';
import 'package:learning_getx/application/modules/test/test-controller.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController;
  final TestController _testController;

  const HomePage(
    this._homeController,
    this._testController, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(() => Text(_homeController.users.length.toString() +
              " " +
              " " +
              _testController.count.toString() +
              " " +
              _homeController.teste)),
        ),
        body: Column(
          children: [
            Container(
              height: 250,
              child: Obx(() => ListView.builder(
                    itemCount: _homeController.users.length,
                    itemBuilder: (context, index) {
                      var user = _homeController.users[index];

                      return Text(user.name);
                    },
                  )),
            ),
            ElevatedButton(
              onPressed: _testController.increment,
              child: Text("increment"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/page2");
              },
              child: Text("go"),
            ),
          ],
        ));
  }
}
