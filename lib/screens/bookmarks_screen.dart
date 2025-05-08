import 'package:flutter/material.dart';

class BookmarksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[100],
        title: Text('Bookmarks / Favourites'),
      ),
      body: Center(
        child: Text(
          'Your bookmarked or favourited items will be displayed here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
