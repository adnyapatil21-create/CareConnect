import 'package:flutter/material.dart';

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medicine Reminders"),
        backgroundColor: Color(0xFF1976D2),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.medication, color: Colors.purple),
            title: Text("Paracetamol"),
            subtitle: Text("9:00 AM"),
          ),
          ListTile(
            leading: Icon(Icons.medication, color: Colors.purple),
            title: Text("Vitamin D"),
            subtitle: Text("8:00 PM"),
          ),
        ],
      ),
    );
  }
}