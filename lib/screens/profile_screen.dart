import 'package:flutter/material.dart';
import 'my_account_screen.dart'; // My Account Screen
import 'progress_screen.dart'; // Progress Screen
import 'achievements_screen.dart'; // Achievements Screen
import 'quiz_history_screen.dart'; // Quiz and Challenge History Screen
import 'bookmarks_screen.dart'; // Bookmarks/Favorites Screen
import 'customization_screen.dart'; // Customization Screen
import 'feedback_screen.dart'; // Feedback/Help Screen

class ProfileScreen extends StatelessWidget {
  final String name = 'John Doe';
  final String username = 'john_doe_123';
  final String phoneNumber = '123-456-7890';
  final String email = 'john.doe@example.com';
  final int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[100],
        elevation: 2,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // User Info Section with Avatar
              _buildUserInfoSection(context),

              SizedBox(height: 20),

              // Profile Options
              _buildProfileOption(
                context,
                title: 'My Account',
                icon: Icons.account_circle,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAccountScreen()),
                  );
                },
              ),
              SizedBox(height: 20),

              _buildProfileOption(
                context,
                title: 'Progress',
                icon: Icons.bar_chart,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProgressScreen()),
                  );
                },
              ),
              SizedBox(height: 20),

              _buildProfileOption(
                context,
                title: 'Achievements',
                icon: Icons.emoji_events,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AchievementsScreen()),
                  );
                },
              ),
              SizedBox(height: 20),

              _buildProfileOption(
                context,
                title: 'Quiz and Challenge History',
                icon: Icons.history,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuizHistoryScreen()),
                  );
                },
              ),
              SizedBox(height: 20),

              _buildProfileOption(
                context,
                title: 'Bookmarks / Favourites',
                icon: Icons.bookmark,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookmarksScreen()),
                  );
                },
              ),
              SizedBox(height: 20),

              _buildProfileOption(
                context,
                title: 'Customization',
                icon: Icons.settings,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomizationScreen()),
                  );
                },
              ),
              SizedBox(height: 20),

              _buildProfileOption(
                context,
                title: 'Feedback / Help',
                icon: Icons.help,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeedbackScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build the user info section with avatar
  Widget _buildUserInfoSection(BuildContext context) {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Avatar Image
              GestureDetector(
                onTap: () {
                  _showAvatarSelectionDialog(context); // Show avatar options
                },
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      'assets/default_avatar.png'), // Placeholder for avatar image
                ),
              ),
              SizedBox(width: 20),

              // Name, Username, Age
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name: $name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    'Username: $username',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    'Age: $age',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper function to build the profile option buttons
  Widget _buildProfileOption(BuildContext context,
      {required String title,
      required IconData icon,
      required Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
          children: [
            Icon(icon, color: Colors.deepPurple),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to show avatar selection dialog
  void _showAvatarSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Avatar'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar1.png'),
                  ),
                  title: Text('Avatar 1'),
                  onTap: () {
                    // Implement avatar selection logic
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar2.png'),
                  ),
                  title: Text('Avatar 2'),
                  onTap: () {
                    // Implement avatar selection logic
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar3.png'),
                  ),
                  title: Text('Avatar 3'),
                  onTap: () {
                    // Implement avatar selection logic
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.upload_file),
                  title: Text('Upload Your Own'),
                  onTap: () {
                    // Implement logic to upload avatar
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
