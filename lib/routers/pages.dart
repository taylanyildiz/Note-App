import 'package:get/get.dart';
import '/bindings/binding.dart';
import '/routers/routers.dart';
import '/screens/screen.dart';

class Pages {
  Pages._();

  static final pages = <GetPage>[
    GetPage(
      name: Routers.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routers.REGISTER,
      page: () => RegisterScreen(),
      binding: RegisterBinding(),
    ),
  ];
}
