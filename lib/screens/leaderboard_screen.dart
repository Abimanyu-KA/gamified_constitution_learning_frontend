import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> leaderboardData = [
    {'name': 'User 1', 'rank': 1},
    {'name': 'User 2', 'rank': 2},
    {'name': 'User 3', 'rank': 3},
    {'name': 'User 4', 'rank': 4},
    {'name': 'User 5', 'rank': 5},
    {'name': 'User 6', 'rank': 6},
    {'name': 'User 7', 'rank': 7},
    {'name': 'User 8', 'rank': 8},
    {'name': 'User 9', 'rank': 9},
    {'name': 'User 10', 'rank': 10},
  ];

  final Map<String, dynamic> currentUser = {'name': 'CurrentUser', 'rank': 11};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[100], // Softer pastel color
        elevation: 2,
        title: Text(
          'Leaderboard',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      backgroundColor: Colors.grey[100], // Light neutral background
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Podium for Top 3
            _buildPodium(context),

            SizedBox(height: 20),

            // Title for Remaining Rankings
            Text(
              'Other Players',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 20),

            // List for players ranked 4-10
            Expanded(
              child: ListView.builder(
                itemCount: leaderboardData.length - 3, // From 4th to 10th place
                itemBuilder: (context, index) {
                  return _buildLeaderboardCard(
                    context,
                    rank: leaderboardData[index + 3]['rank'],
                    name: leaderboardData[index + 3]['name'],
                  );
                },
              ),
            ),

            // Display Current User Rank
            _buildUserRankCard(context, currentUser),
          ],
        ),
      ),
    );
  }

  // Helper function to build the podium for top 3 users with better styling
  Widget _buildPodium(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Second Place
        _buildPodiumPosition(context,
            rank: 2,
            name: leaderboardData[1]['name'],
            heightFactor: 0.9,
            color: Colors.grey[300]),
        // First Place (center, higher)
        _buildPodiumPosition(context,
            rank: 1,
            name: leaderboardData[0]['name'],
            heightFactor: 1.2,
            color: Colors.amber[400]),
        // Third Place
        _buildPodiumPosition(context,
            rank: 3,
            name: leaderboardData[2]['name'],
            heightFactor: 0.8,
            color: Colors.brown[300]),
      ],
    );
  }

  // Helper function to build each podium position with updated styling
  Widget _buildPodiumPosition(BuildContext context,
      {required int rank,
      required String name,
      required double heightFactor,
      required Color? color}) {
    return Column(
      children: [
        Icon(
          rank == 1
              ? Icons.emoji_events
              : Icons.military_tech, // Trophy for first, medal for others
          color: rank == 1
              ? Colors.yellow[700]
              : Colors.blue[300], // Gold for first, blue for others
          size: 30,
        ),
        SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        SizedBox(height: 10),
        Container(
          height: 100 * heightFactor, // Vary height for podium effect
          width: 80,
          decoration: BoxDecoration(
            color: color, // Gold, Silver, and Bronze podiums
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: Center(
            child: Text(
              '$rank',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Helper function to build leaderboard card-style items for ranks 4-10
  Widget _buildLeaderboardCard(BuildContext context,
      {required int rank, required String name}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.indigoAccent,
          child: Text(
            '$rank',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          'Rank $rank',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
        trailing: Icon(
          Icons.emoji_events,
          color: Colors.deepPurple,
          size: 30,
        ),
      ),
    );
  }

  // Helper function to build the current user's rank card if they are not in the top 10
  Widget _buildUserRankCard(BuildContext context, Map<String, dynamic> user) {
    if (user['rank'] > 10) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                spreadRadius: 2,
                offset: Offset(3, 3),
              ),
            ],
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.indigoAccent,
              child: Text(
                '${user['rank']}',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            title: Text(
              user['name'],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: Text(
              'Your Rank: ${user['rank']}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            trailing: Icon(
              Icons.account_circle,
              color: Colors.deepPurple,
              size: 30,
            ),
          ),
        ),
      );
    }
    return Container(); // Empty container if user is in top 10
  }
}
