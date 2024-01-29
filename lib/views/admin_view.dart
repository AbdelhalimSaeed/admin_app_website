// lib/views/admin_view.dart
import 'package:flutter/material.dart';
import 'package:admin_app_website/models/signup_entry.dart';

class AdminView extends StatelessWidget {
  // Mock data for demonstration purposes
  final List<SignupEntry> signupEntries = [
    SignupEntry(
      startupName: 'Startup A',
      ownerName: 'Owner A',
      nationalIdImageUrl: 'url_a',
      commercialRecordImageUrl: 'url_b',
      taxCardImageUrl: 'url_c',
    ),
    // Add more entries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin View'),
      ),
      body: SingleChildScrollView(
        child: DataTable(
          columns: [
            DataColumn(label: Text('Startup Name')),
            DataColumn(label: Text('Owner Name')),
            DataColumn(label: Text('National ID')),
            DataColumn(label: Text('Commercial Record')),
            DataColumn(label: Text('Tax Card')),
          ],
          rows: signupEntries.map((entry) {
            return DataRow(
              cells: [
                DataCell(Text(entry.startupName)),
                DataCell(Text(entry.ownerName)),
                DataCell(Image.network(entry.nationalIdImageUrl)),
                DataCell(Image.network(entry.commercialRecordImageUrl)),
                DataCell(Image.network(entry.taxCardImageUrl)),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
