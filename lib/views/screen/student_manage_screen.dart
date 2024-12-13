import 'package:flutter/material.dart';

class StudentManageScreen extends StatefulWidget {
  const StudentManageScreen({super.key});

  @override
  State<StudentManageScreen> createState() => _StudentManageScreenState();
}

class _StudentManageScreenState extends State<StudentManageScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: DropdownButtonFormField(
              decoration: InputDecoration(
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
              hint: Text("Chọn lớp"),
              items: [],
              onChanged: (value) {}),
        ),
        DataTable(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            columns: [
              DataColumn(
                label: Expanded(
                  child: Text(
                    'MSSV',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Họ và tên',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
            rows: [
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('0306211260')),
                  DataCell(Text('Phạm Ngọc Liêm')),
                ],
              ),
            ])
      ],
    );
  }
}
