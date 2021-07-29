import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app_mobile/widgets/widgets.dart';
import '/controllers/controller.dart';

class RegisterScreen extends GetView<RegisterScreenController> {
  RegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildInput(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }

  Widget _buildInput() {
    return GetBuilder<RegisterScreenController>(
      builder: (_) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputText(
                textController: controller.nameController,
                hint: 'Name',
              ),
              SizedBox(height: 10.0),
              InputText(
                textController: controller.lastNameController,
                hint: 'Last Name',
              ),
              SizedBox(height: 10.0),
              InputText(
                textController: controller.mailController,
                hint: 'Mail Adress',
              ),
              SizedBox(height: 10.0),
              InputText(
                textController: controller.phoneController,
                hint: 'Phone Number',
              ),
              SizedBox(height: 10.0),
              InputText(
                isPassword: true,
                textController: controller.passwordController,
                hint: 'Password',
              ),
              SizedBox(height: 10.0),
              InputText(
                isPassword: true,
                textController: controller.passwordAgainController,
                hint: 'Password Again',
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 5.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Note Register',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
