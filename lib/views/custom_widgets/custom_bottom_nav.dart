import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
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
    );
  }
}
