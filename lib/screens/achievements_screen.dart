import 'package:flutter/material.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[100],
        title: const Text('Achievements'),
      ),
      body: const Center(
        child: Text(
          'Your achievements, streak, and highest league/rank will be displayed here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
