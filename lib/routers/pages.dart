import 'package:get/get.dart';
import '/bindings/splash_binding.dart';
import '/routers/routers.dart';
import '/screens/splash_screen.dart';

class Pages {
  Pages._();

  static final pages = <GetPage>[
    GetPage(
      name: Routers.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
  ];
}
