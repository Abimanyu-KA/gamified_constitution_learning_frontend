import 'package:flutter/material.dart';

class DailyChallengesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Challenges'),
        backgroundColor: Colors.indigoAccent[100],
      ),
      body: Center(
        child: Text(
          'Welcome to the Daily Challenges!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
