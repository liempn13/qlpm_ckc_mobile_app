import 'package:flutter/material.dart';
import 'package:qlpm_ckc_mobile_app/views/custom_widgets/base_page.dart';

class UsersManageScreen extends StatefulWidget {
  const UsersManageScreen({super.key});

  @override
  State<UsersManageScreen> createState() => _UsersManageScreenState();
}

class _UsersManageScreenState extends State<UsersManageScreen> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBarColor: Colors.white,
      showAppBar: true,
      titletext: "Danh sách người dùng",
      defaultBody: true,
      fab: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(actions: [Container()]);
              });
        },
        backgroundColor: Color(0xFF1E88E5),
        foregroundColor: Colors.white,
      ),
    );
  }
}
