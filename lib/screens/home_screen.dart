import 'family_screen.dart';
import 'contacts_screen.dart';
import 'profile_screen.dart';
import 'history_screen.dart';
import 'reminders_screen.dart';
import 'location_screen.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text("CareConnect"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xFF1976D2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, Omkar 👋",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Stay Connected. Stay Protected.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(45),
              ),
              child: const Text(
                "SOS",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.1,
                children:  [
                 DashboardCard(
  title: "Family",
  icon: Icons.family_restroom,
  color: Colors.blue,
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FamilyScreen(),
      ),
    );
  },
),
                  DashboardCard(
  title: "Contacts",
  icon: Icons.contact_phone,
  color: Colors.green,
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ContactsScreen(),
      ),
    );
  },
),
                  DashboardCard(
                    title: "Location",
                    icon: Icons.location_on,
                    color: Colors.orange,
                    onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LocationScreen(),
      ),
    );
  },
                  ),
                  DashboardCard(
                    title: "Reminders",
                    icon: Icons.medication,
                    color: Colors.purple,
                    onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RemindersScreen(),
      ),
    );
  },
                  ),
                  DashboardCard(
                    title: "History",
                    icon: Icons.history,
                    color: Colors.teal,
                    onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HistoryScreen(),
      ),
    );
  },
                  ),
                  DashboardCard(
  title: "Profile",
  icon: Icons.person,
  color: Colors.indigo,
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      ),
    );
  },
),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const DashboardCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 45,
              color: color,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}