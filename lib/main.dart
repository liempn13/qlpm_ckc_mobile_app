import 'package:flutter/material.dart';
import 'package:qlpm_ckc_mobile_app/constants/app_string.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/home_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/login_screen.dart';

void main() {
  AppString.getAPIUrl();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
