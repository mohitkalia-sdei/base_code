import 'package:custom_maps/global_utils/app_string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin Utils {
  static SnackbarController errorMessage(String message) {
    return Get.snackbar(
      AppStringConstants.appNameText,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.tealAccent,
    );
  }
}
