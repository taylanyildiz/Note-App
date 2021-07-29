import 'package:get/route_manager.dart';
import 'package:note_app_mobile/localization/languages/en.dart';
import 'package:note_app_mobile/localization/languages/tr.dart';

class Localization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'tr': tr,
      };
}
