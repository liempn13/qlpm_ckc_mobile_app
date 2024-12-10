import 'package:flutter/material.dart';
import 'package:qlpm_ckc_mobile_app/constants/app_routes.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/home_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/login_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/profile_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.homeRoute:
      return MaterialPageRoute(
          builder: (context) => HomeScreen(),
          settings: const RouteSettings(
            name: AppRoutes.homeRoute,
          ));
    // ////

    case AppRoutes.loginRoute:
      return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
          settings: const RouteSettings(
            name: AppRoutes.loginRoute,
          ));

    ///
    case AppRoutes.profileRoute:
      return MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
          settings: const RouteSettings(
            name: AppRoutes.profileRoute,
          ));
    default:
      return MaterialPageRoute(builder: ((context) => HomeScreen()));
  }
}
