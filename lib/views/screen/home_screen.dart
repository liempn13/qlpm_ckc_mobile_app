import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:qlpm_ckc_mobile_app/constants/app_routes.dart';
import 'package:qlpm_ckc_mobile_app/models/users.dart';
import 'package:qlpm_ckc_mobile_app/views/custom_widgets/base_page.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/login_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  // final Users loginUsers;
  HomeScreen({
    super.key,
    // required this.loginUsers
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int currentPageIndex = 0;
    return BasePage(
      appBarColor: Colors.white,
      showAppBar: true,
      defaultBody: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: SpeedDial(
            label: Text("Tên người dùng"),
            icon: Icons.person_outline_sharp,
            backgroundColor: Color(0xFFEEF2F6),
            elevation: 0,
            direction: SpeedDialDirection.down,
            children: [
              SpeedDialChild(
                labelWidget: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.settings),
                              Text("Tài khoản của tôi"),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfileScreen()));
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [Icon(Icons.logout), Text("Đăng xuất")],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      bodyChildren: [],
      // bottomNavigationBar: ,
    );
  }
}
