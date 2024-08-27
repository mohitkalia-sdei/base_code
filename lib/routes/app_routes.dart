import 'package:custom_maps/screens/login/view/login_screen.dart';
import 'package:custom_maps/splash_screen.dart';
import 'package:get/get.dart';

/// Routes name to directly navigate the route by its name
class Routes {
  Routes get routes => Routes();
  static String splashScreen = '/SplashScreen';
  static String login = '/Login';
}

/// Add this list variable into your GetMaterialApp as the value of getPages parameter.
/// You can get the reference to the above GetMaterialApp code.
final List<GetPage<dynamic>> getPages = <GetPage<dynamic>>[
  GetPage<dynamic>(
    name: Routes.splashScreen,
    page: () => const SplashScreen(),
  ),
  GetPage<dynamic>(
    name: Routes.login,
    page: () => const LoginScreen(),
  ),
];
