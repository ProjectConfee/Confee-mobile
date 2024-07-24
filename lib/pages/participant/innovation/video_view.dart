import 'package:flutter/material.dart';
import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar
import 'package:youtube_1/pages/participant/innovation/home_page.dart'; // Import HomePage
import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfileViewPage

class VideoViewPage extends StatefulWidget {
  const VideoViewPage({Key? key}) : super(key: key);

  @override
  _VideoViewPageState createState() => _VideoViewPageState();
}

class _VideoViewPageState extends State<VideoViewPage> {
  int _currentIndex = 1; // Default to Packages tab

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        // Navigate to the HomePage when the home icon is tapped
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (Route<dynamic> route) => false,
        );
        break;
      case 2:
        // Navigate to the ProfileViewPage when the profile icon is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileViewPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video View'),
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: const Color.fromARGB(255, 236, 238, 240),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
      body: Center(
        child: Text(
          'Videos will be displayed here.',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
