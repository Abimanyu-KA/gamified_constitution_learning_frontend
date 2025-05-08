import 'package:flutter/material.dart';

class LawDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Law Details'),
        backgroundColor: Colors.blue[50],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Constitutional Law',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'This law discusses the rights and duties of citizens under the constitution...',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Daily Life Example:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'If you are exercising your right to free speech, you are protected under the constitution...',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
