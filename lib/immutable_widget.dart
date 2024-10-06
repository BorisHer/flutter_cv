import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200, // Set your desired background color here
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                  height: 20), // Create vertical space between two widgets
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blue.shade100,
                child: Text(
                  'BG',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue.shade700,
                  ),
                ),
              ),
              const SizedBox(
                  height: 10), // Reduced space between avatar and name
              const Text(
                'Boris G. Hernandez',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                  height: 5), // Reduced space between name and phone number
              Text(
                '+639859882205',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(
                  height: 2), // Reduced space between phone and email
              Text(
                '22-09664@g.batstate-u.edu.ph',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.fromLTRB(15, 6, 0, 0),
                height: 140,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Professional Goal',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
