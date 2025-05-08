import 'package:flutter/material.dart';

class CitizensTipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Citizen\'s Action Tips'),
        backgroundColor: Colors.greenAccent[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Citizen\'s Action Tips',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Here are some tips on how to be a responsible citizen...',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              '1. Stay informed about local laws and regulations.',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '2. Participate in community service.',
              style: TextStyle(fontSize: 18),
            ),
            // Add more tips as needed
          ],
        ),
      ),
    );
  }
}
