import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_service_test/src/controller/getx_controller_test.dart';
import 'package:getx_service_test/src/pages/getx_service_widget.dart';

class GetxControllerWidget extends GetView<GetxControllerTest> {
  const GetxControllerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text(
                controller.count.value.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
            RaisedButton(
              child: Text("Getx Controller Increase"),
              onPressed: () {
                controller.increase();
              },
            ),
          ],
        ),
      ),
    );
  }
}
