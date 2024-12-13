import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/classes_manage_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/login_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/maintenance_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/profile_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/student_manage_screen.dart';
import 'package:qlpm_ckc_mobile_app/views/screen/users_manage_screen.dart';

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
  final formKey = GlobalKey<FormState>();
  int currentPageIndex = 0;
  List<Widget> mainWidgets = [
    StudentManageScreen(),
    ClassesManageScreen(),
    UsersManageScreen(),
    MaintenanceScreen()
  ];

  void onSelectedPage(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SpeedDial(
              label: Text("Tên người dùng"),
              icon: Icons.person_outline_sharp,
              backgroundColor: Color(0xFFEEF2F6),
              elevation: 0,
              spaceBetweenChildren: 2,
              direction: SpeedDialDirection.down,
              children: [
                SpeedDialChild(
                  labelWidget: Padding(
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
                            builder: (BuildContext context) =>
                                ProfileScreen()));
                  },
                ),
                SpeedDialChild(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  labelWidget: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Icon(Icons.logout), Text("Đăng xuất")],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Color(0xFFEEF2F6),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: SingleChildScrollView(
          child: mainWidgets[currentPageIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: onSelectedPage,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: 'Sinh viên',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Lớp',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline_rounded),
            label: 'Người dùng',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build_rounded),
            label: 'Bảo trì',
          ),
        ],
        selectedItemColor: const Color(0xFF1E88E5),
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
      ),
      floatingActionButton: currentPageIndex == 2
          ? FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(actions: [
                        Container(
                          child: Form(
                            key: formKey,
                            child: Column(
                              children: [
                                Text(
                                  "Nhập thông tin tài khoản",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    label: Text("Họ và tên"),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Không được để trống';
                                    }
                                    return null;
                                  },
                                ),
                                //Email
                                TextFormField(
                                  decoration: InputDecoration(
                                    label: const Text("Email"),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Không được để trống';
                                    }
                                    if (RegExp(
                                            r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                                        .hasMatch(value)) {
                                      return 'Email không hợp lệ';
                                    }
                                    // Kiểm tra độ dài phần trước @
                                    final localPart = value.split('@')[0];
                                    if (localPart.length < 6 ||
                                        localPart.length > 30) {
                                      return 'Phần trước @ phải từ 6-30 ký tự';
                                    }
                                    if (value.length > 254) {
                                      return 'Email không được vượt quá 254 ký tự';
                                    }
                                    return null;
                                  },
                                ),
                                //Số điện thoại
                                TextFormField(
                                  decoration: InputDecoration(
                                    label: Text("Số điện thoại"),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  keyboardType: TextInputType.phone,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Không được để trống';
                                    }
                                    if (value.length > 11 &&
                                        value.length < 10) {
                                      return 'Số điện thoại không hợp lệ';
                                    }
                                    if (!value.startsWith('0')) {
                                      return 'Số điện thoại phải bắt đầu bằng số 0';
                                    }
                                    if (RegExp(r'^[0-9]+$').hasMatch(value)) {
                                      return 'Số điện thoại chỉ gồm số';
                                    }
                                    if (value.startsWith('00')) {
                                      return 'Số điện thoại không được bắt đầu bằng 00';
                                    }
                                    return null;
                                  },
                                ),
                                //Mật khẩu
                                TextFormField(
                                  decoration: InputDecoration(
                                    label:
                                        Text("Mật khẩu"), //Chỉnh style hintText
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  obscureText: true,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Không được để trống';
                                    }
                                    return null;
                                  },
                                ),
                                //Xác nhận mật khẩu
                                TextFormField(
                                  decoration: InputDecoration(
                                    label: Text("Xác nhận mật khẩu"),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  obscureText: true,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Không được để trống';
                                    }
                                    return null;
                                  },
                                ),
                                DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    label: Text("Vai trò"),
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  items: [],
                                  onChanged: (value) {},
                                ),
                              ],
                            ),
                          ),
                        )
                      ]);
                    });
              },
              backgroundColor: Color(0xFF1E88E5),
              foregroundColor: Colors.white,
            )
          : null,
    );
  }
}
