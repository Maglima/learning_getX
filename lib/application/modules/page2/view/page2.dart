import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/application/modules/test/test-controller.dart';

class Page extends StatelessWidget {
  final TestController _testController;

  const Page(this._testController, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(
              _testController.count.toString(),
            )),
      ),
      body: Container(
        child: RaisedButton(onPressed: () {
          _testController.increment();
        }),
      ),
    );
  }
}
