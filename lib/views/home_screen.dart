import 'package:flutter/material.dart';
import 'package:qlpm_ckc_mobile_app/models/users.dart';

class HomeScreen extends StatefulWidget {
  final Users loginUsers;
  HomeScreen({super.key, required this.loginUsers});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      drawer: Drawer(
        child: ListView(
          children: [],
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
