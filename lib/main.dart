import 'package:flutter/material.dart';
import 'package:qlpm_ckc_mobile_app/views/home_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}
