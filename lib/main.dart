import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routers/routers.dart';
import 'routers/pages.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routers.SPLASH,
      getPages: Pages.pages,
      locale: Get.locale ?? Locale('en'),
    );
  }
}
