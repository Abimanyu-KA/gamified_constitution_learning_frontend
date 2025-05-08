import 'package:flutter/material.dart';
import 'law_details_page.dart'; // Assume the same detailed law page for exploring laws

class ExploreLawsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[100],
        elevation: 2,
        title: Text(
          'Explore Laws',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      backgroundColor: Colors.grey[100], // Light background for the page
      body: SingleChildScrollView(
        // Wrap content in a scroll view to prevent overflow
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildLawCategory(
                context,
                title: 'Fundamental Rights',
                description: 'Rights essential for every citizen...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Fundamental Duties',
                description: 'Duties expected from every citizen...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Directive Principles of State Policy',
                description: 'Guiding principles for state governance...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Structure and Functioning of Government',
                description: 'Overview of government structures...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'State vs Union Relations',
                description: 'Relationship between state and union...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Emergency Provisions',
                description: 'Special provisions during emergencies...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Amendment Process',
                description: 'The process for amending the constitution...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Election and Representation',
                description: 'Elections and representation in government...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Local Government (Panchayat and Municipality)',
                description: 'Structure of local governance...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Citizenship',
                description: 'Laws governing citizenship...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Language Provisions',
                description: 'Official language provisions...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Judicial Review and Remedies',
                description: 'Overview of judicial review...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Special Provisions for Special States',
                description: 'Special provisions for certain states...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'SC, ST and OBCs',
                description:
                    'Provisions for Scheduled Castes, Tribes, and Other Backward Classes...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Property and Economic Provisions',
                description:
                    'Laws regarding property and economic provisions...',
              ),
              SizedBox(height: 20),
              _buildLawCategory(
                context,
                title: 'Others',
                description: 'Miscellaneous laws and provisions...',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build Law Category Cards
  Widget _buildLawCategory(BuildContext context,
      {required String title, required String description}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  LawDetailsPage()), // Navigate to full law details
        );
      },
      child: Container(
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
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis, // Ensure no overflow of text
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
}
