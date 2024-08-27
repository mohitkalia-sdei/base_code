import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  final localStorage = GetStorage();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxBool autoValidate = false.obs;
  RxBool obscureText = true.obs;

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  /// Fields Validation Method
  validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        login();
      } catch (e) {
        debugPrint("loginFirebase :------- ${e.toString()}");
      }
    } else {
      autoValidate.value = true;
    }
  }

  Future<void> login() async {}
}
