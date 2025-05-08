import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  final String username = 'john_doe_123'; // Username is non-editable
  final String phoneNumber = '123-456-7890'; // Example phone number
  final String email = 'john.doe@example.com'; // Example email

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[100],
        elevation: 2,
        title: Text(
          'My Account',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      backgroundColor: Colors.grey[100], // Light background
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Username (non-editable)
            _buildAccountDetail(
              context,
              title: 'Username',
              value: username,
              isEditable: false,
            ),
            SizedBox(height: 20),

            // Phone Number (editable)
            _buildAccountDetail(
              context,
              title: 'Phone Number',
              value: phoneNumber,
              isEditable: true,
              onEdit: () {
                _showEditDialog(context, 'Phone Number', phoneNumber);
              },
            ),
            SizedBox(height: 20),

            // Email (editable)
            _buildAccountDetail(
              context,
              title: 'Email',
              value: email,
              isEditable: true,
              onEdit: () {
                _showEditDialog(context, 'Email', email);
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build account detail row (with or without edit option)
  Widget _buildAccountDetail(BuildContext context,
      {required String title,
      required String value,
      bool isEditable = false,
      Function()? onEdit}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title: $value',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          if (isEditable)
            IconButton(
              icon: Icon(Icons.edit, color: Colors.deepPurple),
              onPressed: onEdit,
            ),
        ],
      ),
    );
  }

  // Helper function to show edit dialog (for phone number or email)
  void _showEditDialog(BuildContext context, String field, String value) {
    // ignore: unused_local_variable
    String newValue = value;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit $field'),
          content: TextField(
            decoration: InputDecoration(labelText: field),
            onChanged: (value) {
              newValue = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Save the new value (implement saving logic)
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
