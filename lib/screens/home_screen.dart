import 'package:flutter/material.dart';
import 'law_details_page.dart'; // Assume this page shows detailed law and example
import 'citizens_tips_page.dart'; // Assume this page shows Citizen's Tips details
import 'daily_challenges_page.dart'; // New page for Daily Challenges
import 'quizzes_page.dart'; // New page for Quizzes
import 'flashcards_page.dart'; // New page for Flashcards
import 'time_rush_page.dart'; // New page for Time Rush

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DateTime streakEndTime = DateTime.now()
      .add(Duration(hours: 8, minutes: 45)); // Adjust the time as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[100], // Softer pastel color
        elevation: 2, // Slight shadow for depth but still minimal
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: [
          // Streak display with onTap to show time left before streak loss
          GestureDetector(
            onTap: _showStreakTimeRemaining,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.local_fire_department, color: Colors.orange),
                  SizedBox(width: 5),
                  Text(
                    '5 Days', // Streak count
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ),
          // Info Icon
          IconButton(
            icon: Icon(Icons.info_outline, color: Colors.black87),
            onPressed: _showInfoDialog, // Show info dialog
          ),
        ],
      ),
      backgroundColor: Colors.grey[100], // Light, neutral background
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Article of the Day Widget with matching light color
            _buildArticleOfTheDay(context),
            SizedBox(height: 20),

            // Grid layout for other widgets
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2, // Grid with two items per row
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                _buildMinimalistGameButton(
                  context,
                  title: 'Daily Challenges',
                  icon: Icons.star,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DailyChallengesPage()),
                    );
                  },
                  buttonColor: const Color.fromARGB(
                      255, 121, 134, 203), // Muted soft blue
                ),
                _buildMinimalistGameButton(
                  context,
                  title: 'Quizzes',
                  icon: Icons.quiz,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuizzesPage()),
                    );
                  },
                  buttonColor: const Color.fromARGB(
                      255, 77, 182, 172), // Muted teal color
                ),
                _buildMinimalistGameButton(
                  context,
                  title: 'Flashcards',
                  icon: Icons.flash_on,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FlashcardsPage()),
                    );
                  },
                  buttonColor:
                      const Color.fromARGB(255, 255, 213, 79), // Soft amber
                ),
                _buildMinimalistGameButton(
                  context,
                  title: 'Time Rush', // Changed from Achievements
                  icon: Icons.timer,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimeRushPage()),
                    );
                  },
                  buttonColor:
                      const Color.fromARGB(255, 149, 117, 205), // Muted purple
                ),
              ],
            ),

            SizedBox(height: 20),

            // Citizen's Info Tips widget (scrollable and placed below grid)
            _buildCitizensInfoTips(context),
          ],
        ),
      ),
    );
  }

  // Function to show time remaining until the streak is lost
  void _showStreakTimeRemaining() {
    Duration timeRemaining = streakEndTime.difference(DateTime.now());
    String formattedTime = _formatDuration(timeRemaining);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Streak Time Remaining'),
          content: Text(
            'You have $formattedTime left to maintain your streak.',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // Helper function to format the duration into hours and minutes
  String _formatDuration(Duration duration) {
    int hours = duration.inHours;
    int minutes = duration.inMinutes % 60;
    return '$hours hours and $minutes minutes';
  }

  // Helper function to build the article of the day widget with light matching color
  Widget _buildArticleOfTheDay(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to detailed law and example page
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  LawDetailsPage()), // This page will show more about the law with a daily life example
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue[50], // Light matching color
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Article of the Day',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Today\'s topic is Constitutional Law: Learn about the rights and duties...',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              maxLines: 3, // Display a summary
              overflow:
                  TextOverflow.ellipsis, // Show ellipsis if text overflows
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build Citizen's Info Tips widget
  Widget _buildCitizensInfoTips(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to Citizen's Tips page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CitizensTipsPage()),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.greenAccent[100], // Light green accent
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Citizen\'s Action Tips',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Get tips on how to be a responsible and proactive citizen...',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build minimalist buttons
  Widget _buildMinimalistGameButton(BuildContext context,
      {required String title,
      required IconData icon,
      required Function() onTap,
      required Color buttonColor}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(15), // Slightly rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              spreadRadius: 2,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 40), // Fun but still modern
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to show information dialog
  void _showInfoDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('App Information'),
          content: Text(
              'The app UI changes according to age and gender to better suit the user. '
              'Also, age-specific and gender-specific laws will be more focused upon and '
              'taught better depending on the user.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
