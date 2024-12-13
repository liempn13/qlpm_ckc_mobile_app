import 'package:flutter/material.dart';

class MaintenanceScreen extends StatefulWidget {
  const MaintenanceScreen({super.key});

  @override
  State<MaintenanceScreen> createState() => _MaintenanceScreenState();
}

class _MaintenanceScreenState extends State<MaintenanceScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            controller: tabController,
            padding: EdgeInsets.all(12),
            unselectedLabelColor: Colors.black,
            indicatorColor: Color(0xFF1E88E5),
            tabs: const [
              Tab(text: "Danh sách phòng"),
              Tab(text: "Thông tin có thay đổi"),
            ],
          ),
        ],
      ),
    );
  }
}
