import 'package:flutter/material.dart';

class AccountCreationScreen extends StatelessWidget {
  const AccountCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Account')),
      body: Center(
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            DropdownButton<String>(
              hint: const Text("Select Gender"),
              items: <String>['Male', 'Female', 'Other'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Age'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Confirm Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
