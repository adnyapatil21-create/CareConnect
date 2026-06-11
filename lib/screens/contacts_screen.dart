import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Emergency Contacts"),
        backgroundColor: const Color(0xFF1976D2),
        foregroundColor: Colors.white,
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF1976D2),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ContactCard(
            name: "Rahul Patil",
            relation: "Friend",
            phone: "9876543210",
          ),

          SizedBox(height: 12),

          ContactCard(
            name: "Priya Sharma",
            relation: "Sister",
            phone: "9876543211",
          ),

          SizedBox(height: 12),

          ContactCard(
            name: "Amit Joshi",
            relation: "Neighbor",
            phone: "9876543212",
          ),
        ],
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String name;
  final String relation;
  final String phone;

  const ContactCard({
    super.key,
    required this.name,
    required this.relation,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.green,
          child: Icon(
            Icons.contact_phone,
            color: Colors.white,
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "$relation\n$phone",
        ),
        isThreeLine: true,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.call, color: Colors.green),
            SizedBox(width: 10),
            Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}