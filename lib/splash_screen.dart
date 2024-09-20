import 'package:custom_maps/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final GetStorage localStorage = GetStorage();

  @override
  void initState() {
    super.initState();
    nextPage();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(),
      ),
    );
  }

  Future<void> nextPage() async {
    Future.delayed(const Duration(seconds: 3), () async {
      await Get.toNamed(Routes.login);
    });
  }
}
