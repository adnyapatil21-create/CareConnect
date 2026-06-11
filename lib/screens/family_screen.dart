import 'package:flutter/material.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Members"),
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
          FamilyMemberCard(
            name: "John Doe",
            relation: "Father",
            phone: "9876543210",
          ),

          SizedBox(height: 12),

          FamilyMemberCard(
            name: "Jane Doe",
            relation: "Mother",
            phone: "9876543211",
          ),

          SizedBox(height: 12),

          FamilyMemberCard(
            name: "Alex Doe",
            relation: "Brother",
            phone: "9876543212",
          ),
        ],
      ),
    );
  }
}

class FamilyMemberCard extends StatelessWidget {
  final String name;
  final String relation;
  final String phone;

  const FamilyMemberCard({
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
          backgroundColor: Color(0xFF1976D2),
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text("$relation\n$phone"),
        isThreeLine: true,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),
      ),
    );
  }
}