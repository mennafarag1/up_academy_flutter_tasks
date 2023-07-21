

import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  final String email;
  final String password;
  final String name;
  final String phone;

  BusinessCardScreen({
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffccae6b),
      appBar: AppBar(
        backgroundColor: const Color(0xffccae6b),
        title: const Text('Business Card'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage('image/menna.jpeg'),
          ),
          const Text(
            'Menna Ahmed',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Software Engineer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            color: Colors.white,
            child: const Row(
              children: [
                SizedBox(width: 20),
                Icon(
                  Icons.phone,
                  size: 40,
                  color: Color(0xFF2B475E),
                ),
                SizedBox(width: 20),
                Text(
                  '01100812422',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            color: Colors.white,
            child: const Row(
              children: [
                SizedBox(width: 20),
                Icon(
                  Icons.email,
                  size: 40,
                  color: Color(0xFF2B475E),
                ),
                SizedBox(width: 20),
                Text(
                  'menna.farag@gmail.com',
                  style: TextStyle(fontSize: 24),
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
