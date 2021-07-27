import 'package:get/get.dart';
import '/controllers/controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}
