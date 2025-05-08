import 'package:flutter/material.dart';

class CustomizationScreen extends StatefulWidget {
  @override
  _CustomizationScreenState createState() => _CustomizationScreenState();
}

class _CustomizationScreenState extends State<CustomizationScreen> {
  // Default selected language is English
  String _selectedLanguage = 'English';

  // List of language options
  final List<String> _languages = [
    'English',
    'Hindi',
    'Bengali',
    'Telugu',
    'Marathi',
    'Tamil',
    'Gujarati',
    'Urdu',
    'Kannada',
    'Malayalam',
    'Odia',
    'Punjabi'
  ];

  // Dark mode switch
  bool _isDarkMode = false;

  // Text size options
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[100],
        title: Text('Customization'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Language Selection
            Text(
              'Choose App Language',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // Dropdown menu for language selection
            DropdownButton<String>(
              value: _selectedLanguage,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.black87, fontSize: 16),
              underline: Container(
                height: 2,
                color: Colors.indigoAccent[100],
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLanguage = newValue!;
                });
                // Implement the logic to change the app language here
              },
              items: _languages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

            SizedBox(height: 20),

            // Dark Mode Toggle
            SwitchListTile(
              title: Text(
                'Dark Mode',
                style: TextStyle(fontSize: 18),
              ),
              value: _isDarkMode,
              onChanged: (bool value) {
                setState(() {
                  _isDarkMode = value;
                });
                // Implement dark mode toggle logic
              },
            ),
            SizedBox(height: 20),

            // Text Size Customization
            Text(
              'Adjust Text Size',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _textSize,
              min: 12.0,
              max: 24.0,
              divisions: 6,
              label: '$_textSize',
              onChanged: (double value) {
                setState(() {
                  _textSize = value;
                });
                // Implement text size customization logic
              },
            ),
            Text(
              'Preview Text Size',
              style: TextStyle(fontSize: _textSize),
            ),
          ],
        ),
      ),
    );
  }
}
