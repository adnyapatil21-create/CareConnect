import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location"),
        backgroundColor: Color(0xFF1976D2),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Icon(
          Icons.location_on,
          size: 120,
          color: Colors.red,
        ),
      ),
    );
  }
}