import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_service_test/src/controller/getx_controller_test.dart';
import 'package:getx_service_test/src/controller/getx_service_test.dart';
import 'package:getx_service_test/src/pages/getx_controller_widget.dart';
import 'package:getx_service_test/src/pages/getx_service_widget.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Getx Controller"),
              onPressed: () {
                Get.to(
                  GetxControllerWidget(),
                  // binding: BindingsBuilder(
                  //   () => Get.lazyPut<GetxControllerTest>(
                  //       () => GetxControllerTest()),
                  // ),
                );
              },
            ),
            RaisedButton(
              child: Text("Getx Service"),
              onPressed: () {
                Get.to(
                  GetxServiceWidget(),
                  binding: BindingsBuilder(
                    () => Get.lazyPut<GetxServiceTest>(() => GetxServiceTest()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
