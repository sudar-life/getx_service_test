import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_service_test/src/controller/getx_service_test.dart';

class GetxServiceWidget extends GetView<GetxServiceTest> {
  const GetxServiceWidget({Key key}) : super(key: key);

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
              child: Text("Getx Service Increase"),
              onPressed: () {
                controller.increase();
              },
            ),
            RaisedButton(
              child: Text("Getx Service clear"),
              onPressed: () {
                controller.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
