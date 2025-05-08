import 'package:flutter/material.dart';

class QuizHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[100],
        title: Text('Quiz and Challenge History'),
      ),
      body: Center(
        child: Text(
          'Your quiz and challenge history will be displayed here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
