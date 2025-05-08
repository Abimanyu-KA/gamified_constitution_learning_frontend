import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[100],
        title: Text('Feedback / Help'),
      ),
      body: Center(
        child: Text(
          'You can submit feedback or seek help here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
