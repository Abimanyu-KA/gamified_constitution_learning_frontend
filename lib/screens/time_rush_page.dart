import 'package:flutter/material.dart';

class TimeRushPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Rush'),
        backgroundColor: Colors.deepPurple[300],
      ),
      body: Center(
        child: Text(
          'Welcome to Time Rush! Complete tasks as fast as you can!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
