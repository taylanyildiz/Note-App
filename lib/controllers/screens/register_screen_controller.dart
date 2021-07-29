import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreenController extends GetxController {
  /// Form key
  /// Name
  TextEditingController? nameController;

  ///Last Name
  TextEditingController? lastNameController;

  /// Mail
  TextEditingController? mailController;

  /// Phone
  TextEditingController? phoneController;

  /// Password
  TextEditingController? passwordController;

  /// Password againg
  TextEditingController? passwordAgainController;

  @override
  void onInit() {
    nameController = TextEditingController();
    lastNameController = TextEditingController();
    mailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    passwordAgainController = TextEditingController();
    super.onInit();
  }

  /// Register click
  void onRegister() {}
}
