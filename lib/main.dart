import 'package:flutter/material.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/home_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/login_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/profile_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/route_services.dart' as router;

void main() {
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
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      onUnknownRoute: (RouteSettings settings) {
        // open your app when is executed from outside when is terminated.
        return router.generateRoute(settings);
      },
    );
  }
}
