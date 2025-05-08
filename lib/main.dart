import 'package:flutter/material.dart';
import 'screens/first_screen.dart';
import 'screens/account_creation_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Flow Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/create-account': (context) => AccountCreationScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeWrapper(),
      },
    );
  }
}
