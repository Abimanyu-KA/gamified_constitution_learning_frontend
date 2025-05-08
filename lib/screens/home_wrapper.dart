import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'explore_laws_screen.dart';
import 'profile_screen.dart';
import 'leaderboard_screen.dart';
import 'news_feed_screen.dart';

class HomeWrapper extends StatefulWidget {
  @override
  _HomeWrapperState createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ExploreLawsScreen(),
    ProfileScreen(),
    LeaderboardScreen(),
    NewsFeedScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue), // Changed icon color
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: Colors.blue), // Changed icon color
            label: 'Explore Laws',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.blue), // Changed icon color
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard,
                color: Colors.blue), // Changed icon color
            label: 'Leaderboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed, color: Colors.blue), // Changed icon color
            label: 'News/Feed',
          ),
        ],
        backgroundColor: Colors.white, // Set background to white
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
