import 'package:flutter/material.dart';

class FlashcardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcards'),
        backgroundColor: Colors.amber[300],
      ),
      body: Center(
        child: Text(
          'Welcome to Flashcards!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
