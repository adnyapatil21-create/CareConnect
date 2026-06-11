import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Emergency History"),
        backgroundColor: const Color(0xFF1976D2),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.warning, color: Colors.red),
            title: Text("SOS Triggered"),
            subtitle: Text("10 June 2026 - 8:30 PM"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.blue),
            title: Text("Location Shared"),
            subtitle: Text("8 June 2026 - 5:15 PM"),
          ),
        ],
      ),
    );
  }
}