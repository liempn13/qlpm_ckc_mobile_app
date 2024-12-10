import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Container(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: const Text("Email"),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Không được để trống';
                }
                if (RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                    .hasMatch(value)) {
                  return 'Email không hợp lệ';
                }
                // Kiểm tra độ dài phần trước @
                final localPart = value.split('@')[0];
                if (localPart.length < 6 || localPart.length > 30) {
                  return 'Phần trước @ phải từ 6-30 ký tự';
                }
                if (value.length > 254) {
                  return 'Email không được vượt quá 254 ký tự';
                }
                return null;
              },
            ),
          ],
        ),
      )),
    );
  }
}
