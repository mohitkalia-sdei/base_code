import 'package:custom_maps/screens/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Scaffold(
          body: SingleChildScrollView(
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: Get.height,
                  ),
                  child: Form(
                    key: loginController.formKey,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(25),
                      child: SizedBox(),
                    ),
                  ))),
        ));
  }
}
