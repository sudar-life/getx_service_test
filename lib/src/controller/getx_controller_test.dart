import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GetxControllerTest extends GetxController {
  static GetxControllerTest get to => Get.find();
  RxInt count = 0.obs;

  void increase() {
    count++;
  }
}
