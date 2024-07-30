import 'package:flutter/material.dart';
import '../../../utils/emoticon_face.dart';
import '../../../utils/exercise_tile.dart';
import 'competition.dart';
import 'custom_bottom_navigation_bar.dart';
import 'description_page.dart';
import 'notification.dart';
import 'profile_view.dart';
import 'qrscan_page.dart';
import 'resourceview_page.dart';
import 'stall_checked.dart';
import 'stall_map_page.dart'; // Ensure this import is correct

class HomePage_Sponser extends StatefulWidget {
  const HomePage_Sponser({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage_Sponser> {
  //int _currentIndex = 0;

  void _onBottomNavBarTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage_Sponser()),
        );
        break;
      case 1:
        // Handle action for packages or navigate to packages page
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProfileViewPage()),
        );
        break;
    }
  }

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
      backgroundColor: Color(0xFF050C9B),
      bottomNavigationBar: HomeBottomBar(
        //currentIndex: _currentIndex,
        //onTap: _onBottomNavBarTapped,
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
                            'Hi, Olivia!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Welcome to Confee',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              //fontWeight: FontWeight.bold,
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
                         
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                 
                  SizedBox(height: 35),
                  // Four different faces
                 
                  
                ],
              ),
            ),
            SizedBox(height: 12),
            
            Expanded(
                
              child: Container(
                  
                padding: EdgeInsets.all(25),
                color: Color.fromARGB(255, 228, 225, 225),
                child: Column(
                  
                  children: [
                      SizedBox(height: 17),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     GestureDetector(
  onTap: () {
    _navigateToStallMapPage(context);
  },
  child: Column(
    children: [
      EmoticonFace(
        imagePath: 'asset/images/start.png', // Update to use your image path
      ),
      SizedBox(height: 8),
      Text(
        'Stall Map',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
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
                            EmoticonFace(
        imagePath: 'asset/images/pre_conference.png', // Update to use your image path
      ),
                            
                            SizedBox(height: 8),
                            Text(
                              'Resources',
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      // Description
                      GestureDetector(
                        onTap: () {
                          _navigateToDescriptionPage(context);
                        },
                        child: Column(
                          children: [
                            EmoticonFace(
        imagePath: 'asset/images/post_conference.png', // Update to use your image path
      ),
                            
                            SizedBox(height: 8),
                            Text(
                              'Description',
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                     
                    ],
                  ),
                   SizedBox(height: 72),
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
                            onTap: () {
                              _navigateToCompetitionPage(context);
                            },
                          ),
                          ExerciseTile(
                            icon: Icons.check_circle,
                            exerciseName: 'STALL CHECKED IN PROCESS',
                            onTap: () => _navigateToStallCheckedPage(context),
                          ),
                          ExerciseTile(
                            icon: Icons.qr_code,
                            exerciseName: 'Scan QR Code',
                            onTap: () {
                              _navigateToQRScanPage(context);
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


