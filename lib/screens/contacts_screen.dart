import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FBF8),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Emergency Contacts",
          style: TextStyle(
            color: Color(0xFF2F4F4F),
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Color(0xFF2F4F4F)),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF8FCB9B),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          ContactCard(
            name: "Rahul Patil",
            relation: "Friend",
            phone: "9876543210",
          ),

          SizedBox(height: 15),

          ContactCard(
            name: "Priya Sharma",
            relation: "Sister",
            phone: "9876543211",
          ),

          SizedBox(height: 15),

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
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 28,
            backgroundColor: Color(0xFF8FCB9B),
            child: Icon(Icons.contact_phone, color: Colors.white, size: 28),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2F4F4F),
                  ),
                ),

                const SizedBox(height: 4),

                Text(relation, style: const TextStyle(color: Colors.black54)),

                const SizedBox(height: 2),

                Text(phone, style: const TextStyle(color: Colors.black54)),
              ],
            ),
          ),

          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF8FCB9B),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
