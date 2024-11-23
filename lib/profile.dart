import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1F1F), // Background color
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Section
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black, // Card background
              ),
              child: Stack(
                children: [
                  // Background image
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'asset/AirTerjun.png', // Replace with your asset
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Gradient overlay
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.black.withOpacity(0.3),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  // Profile content
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Profile image
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            'asset/profilePicture.png', // Replace with your asset
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Text details
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Name
                            Text(
                              'AQEEL AQEEL BIN AQEEL',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 8),
                            // VIP tag
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.amber,
                              ),
                              child: const Text(
                                'VIP USER',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Statistics Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Statistik',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Reduced padding
              crossAxisSpacing: 8.0, // Smaller spacing
              mainAxisSpacing: 8.0, // Smaller spacing
              childAspectRatio: 3 / 2, // Adjusted aspect ratio for smaller items
              children: [
                _buildStatCard('Sertai Pada', '13 Mei 1969', Colors.purpleAccent),
                _buildStatCard('Masa Main Terlama', '1 J 49 M', Colors.pinkAccent),
                _buildStatCard('Jumlah Soalan Dijawab', '8', Colors.cyanAccent),
                _buildStatCard('Streak', '10 Hari', Colors.deepPurpleAccent),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, Color lineColor) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[850], // Background color of the card
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2), // Shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Top Line
          Container(
            height: 4.0,
            width: 60.0, // Adjust the width as needed
            decoration: BoxDecoration(
              color: lineColor,
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),
          SizedBox(height: 8.0),
          // Title
          Text(
            title,
            style: TextStyle(
              color: lineColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8.0),
          // Value
          Text(
            value,
            style: TextStyle(
              color: Colors.white, // Text color
              fontSize: 20.0, // Font size for the value
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
