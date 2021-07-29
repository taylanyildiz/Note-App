import 'package:get/get.dart';
import '/controllers/controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RegisterScreenController());
  }
}
