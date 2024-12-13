import 'package:flutter/material.dart';

class ClassesManageScreen extends StatefulWidget {
  const ClassesManageScreen({super.key});

  @override
  State<ClassesManageScreen> createState() => _ClassesManageScreenState();
}

class _ClassesManageScreenState extends State<ClassesManageScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DataTable(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            columns: [
              DataColumn(
                label: Expanded(
                  child: Text(
                    'STT',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Lớp',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'GVCN',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Trạng thái',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Thao tác',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
            rows: [
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ],
              ),
            ])
      ],
    );
  }
}
