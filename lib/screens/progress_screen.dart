import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[100],
        title: Text('Progress'),
      ),
      body: Center(
        child: Text(
          'Your progress details will be shown here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
