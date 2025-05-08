import 'package:flutter/material.dart';

class NewsFeedScreen extends StatelessWidget {
  final List<Map<String, dynamic>> newsFeed = [
    {
      'title': 'New Law Passed for Road Safety',
      'summary':
          'The government has introduced a new law aimed at improving road safety...',
      'date': '2024-09-01'
    },
    {
      'title': 'Amendment to Privacy Laws',
      'summary':
          'Privacy laws have been amended to give citizens more control over their data...',
      'date': '2024-08-28'
    },
    {
      'title': 'Environment Protection Act Updated',
      'summary':
          'The Environment Protection Act has been updated to include stricter penalties...',
      'date': '2024-08-25'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.indigoAccent[100], // Matching the app color scheme
        elevation: 2,
        title: Text(
          'News Feed',
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
        child: ListView.builder(
          itemCount: newsFeed.length,
          itemBuilder: (context, index) {
            return _buildNewsCard(
              context,
              title: newsFeed[index]['title'],
              summary: newsFeed[index]['summary'],
              date: newsFeed[index]['date'],
            );
          },
        ),
      ),
    );
  }

  // Helper function to build the news card with the same style and color scheme
  Widget _buildNewsCard(BuildContext context,
      {required String title, required String summary, required String date}) {
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            Text(
              summary,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                date,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.deepPurple[300], // Accent color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
