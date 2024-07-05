import 'package:flutter/material.dart';
import 'package:youtube_1/util/emoticon_face.dart';
import 'package:youtube_1/util/exercise_tile.dart';
import 'package:youtube_1/pages/resourceview_page.dart'; // Import ResourcePage
import 'package:youtube_1/pages/profile_view.dart'; // Import ProfileViewPage
import 'package:youtube_1/pages/description_page.dart'; // Import DescriptionPage
import 'package:youtube_1/pages/stall_map_page.dart'; // Import StallMapPage
import 'package:youtube_1/pages/stall_checked.dart'; // Import StallCheckedPage
import 'package:youtube_1/pages/notification.dart'; // Import NotificationPage
import 'package:youtube_1/pages/qrscan.dart'; // Import QRScanPage
import 'package:youtube_1/pages/competition.dart'; // Import CompetitionPage

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _navigateToResourcePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResourcePage()),
    );
  }

  void _navigateToProfileViewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileViewPage()),
    );
  }

  void _navigateToDescriptionPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DescriptionPage()),
    );
  }

  void _navigateToStallMapPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StallMapPage()),
    );
  }

  void _navigateToStallCheckedPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StallCheckedPage()),
    );
  }

  void _navigateToNotificationPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NotificationPage()),
    );
  }

  void _navigateToQRScanPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => QRScanPage()),
    );
  }

  void _navigateToCompetitionPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CompetitionPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Packages'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 2) {
            _navigateToProfileViewPage(context); // Navigate to profile view page on profile icon tap
          }
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // Greeting row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Dewon!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '28 Jun, 2023',
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),
                      // Notification
                      GestureDetector(
                        onTap: () {
                          _navigateToNotificationPage(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  // Search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 223, 234, 245),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        SizedBox(width:15),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              _navigateToCompetitionPage(context); // Navigate to CompetitionPage on search icon tap
                            },
                            child: TextField(
                              style: TextStyle(color:    const Color.fromARGB(255, 0, 0, 0)),
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(color: const Color.fromARGB(255, 6, 6, 6)),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  // Four different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Stall Map
                      GestureDetector(
                        onTap: () {
                          _navigateToStallMapPage(context);
                        },
                        child: Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '🗺️', // Map emoji
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Stall Map',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      // Resources
                      GestureDetector(
                        onTap: () {
                          _navigateToResourcePage(context);
                        },
                        child: Column(
                          children: [
                            EmoticonFace(emoticonFace: '🔗'),
                            SizedBox(height: 8),
                            Text(
                              'Resources',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      // Description
                      GestureDetector(
                        onTap: () {
                          _navigateToDescriptionPage(context); // Navigate to DescriptionPage
                        },
                        child: Column(
                          children: [
                            EmoticonFace(emoticonFace: '📜'),
                            SizedBox(height: 8),
                            Text(
                              'Description',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      // QR Scan
                      
                    ],
                  ),
                  SizedBox(height: 25),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Column(
                  children: [
                    // Exercise heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Innovation Studio',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(height: 20),
                    // List of exercises
                    Expanded(
                      child: ListView(
                        children: [
                          ExerciseTile(
                            icon: Icons.search,
                            exerciseName: 'I’M A RESEARCHER COMPETITION ',
                            numberOfExercises: 16,
                            onTap: () {
                              _navigateToCompetitionPage(context); // Navigate to CompetitionPage on tile tap
                            },
                          ),
                          ExerciseTile(
                            icon: Icons.check_circle,
                            exerciseName: 'STALL CHECKED IN PROCESS',
                            numberOfExercises: 20,
                            onTap: () => _navigateToStallCheckedPage(context), // Navigate to StallCheckedPage
                          ),
                          ExerciseTile(
                            icon: Icons.qr_code,
                            exerciseName: 'Scan QR Code',
                            numberOfExercises: 10,
                            onTap: () {
                              _navigateToQRScanPage(context); // Navigate to QRScanPage on QR code tile tap
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
