import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_service_test/src/app.dart';
import 'package:getx_service_test/src/controller/getx_controller_test.dart';

void main() {
  initService();
  runApp(MyApp());
}

void initService() {
  Get.put(GetxControllerTest(), permanent: true);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: App(),
    );
  }
}
