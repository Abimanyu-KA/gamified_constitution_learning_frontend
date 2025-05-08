import 'package:flutter/material.dart';

class QuizzesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzes'),
        backgroundColor: Colors.teal[300],
      ),
      body: Center(
        child: Text(
          'Welcome to the Quizzes!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
