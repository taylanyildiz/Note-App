import 'package:get/get.dart';
import 'package:note_app_mobile/routers/routers.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(Duration(seconds: 1));
    Get.offAndToNamed(Routers.REGISTER);
    super.onInit();
  }
}
