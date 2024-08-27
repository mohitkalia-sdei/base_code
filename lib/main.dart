import 'package:custom_maps/global_utils/app_translations.dart';
import 'package:custom_maps/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppTranslations(),
      locale: const Locale('en', 'US'),
      title: 'baller_academy'.tr,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        dividerColor: Colors.transparent,
      ),
      initialRoute: Routes.splashScreen,
      getPages: getPages,
    );
  }
}
