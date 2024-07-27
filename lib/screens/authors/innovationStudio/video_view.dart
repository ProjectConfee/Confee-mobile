// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar
// import 'package:youtube_1/pages/participant/innovation/home_page.dart'; // Import HomePage
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfileViewPage

// class VideoViewPage extends StatefulWidget {
//   const VideoViewPage({Key? key}) : super(key: key);

//   @override
//   _VideoViewPageState createState() => _VideoViewPageState();
// }

// class _VideoViewPageState extends State<VideoViewPage> {
//   int _currentIndex = 1; // Default to Packages tab

//   void _onTap(int index) {
//     setState(() {
//       _currentIndex = index;
//     });

//     switch (index) {
//       case 0:
//         // Navigate to the HomePage when the home icon is tapped
//         Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (context) => HomePage()),
//           (Route<dynamic> route) => false,
//         );
//         break;
//       case 2:
//         // Navigate to the ProfileViewPage when the profile icon is tapped
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => ProfileViewPage()),
//         );
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Video View'),
//         backgroundColor: Colors.blue[800],
//       ),
//       backgroundColor: const Color.fromARGB(255, 236, 238, 240),
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
//       ),
//       body: Center(
//         child: Text(
//           'Videos will be displayed here.',
//           style: TextStyle(color: Colors.white, fontSize: 20),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
 // import 'package:youtube_1/screens/sponsers/profile_view.dart'; // Import ProfileViewPage

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'custom_bottom_navigation_bar.dart';
import 'home_page.dart';
import 'profile_view.dart';
// import 'package:youtube_1/screens/sponsers/home_page.dart';

// import '../../sponsers/custom_bottom_navigation_bar.dart';
// import '../../sponsers/home_page.dart';
// import '../../sponsers/profile_view.dart';
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart';

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
          MaterialPageRoute(builder: (context) => HomePage_Sponser()),
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
        title: Text('Videos'),
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.grey[300],
          child: ListView(
            children: [
              _buildVideoCard('https://youtu.be/aK4mUsPRZHk?si=K1gRXYkkoItv62EF'),
              _buildVideoCard('https://youtu.be/ePzkMwOsKUM?si=sYkKY24JPBdrlujs'),
              _buildVideoCard('https://youtu.be/j4M47qLTeJ4?si=vF3A9ytZ8WzHjjcb'),
              _buildVideoCard('https://youtu.be/j4M47qLTeJ4?si=vF3A9ytZ8WzHjjcb'),
              _buildVideoCard('https://youtu.be/j4M47qLTeJ4?si=vF3A9ytZ8WzHjjcb'),
              _buildVideoCard('https://youtu.be/j4M47qLTeJ4?si=vF3A9ytZ8WzHjjcb'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVideoCard(String url) {
    String videoId = YoutubePlayer.convertUrlToId(url)!;
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [Colors.white, Colors.grey[200]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Video Title', // You can update this with the actual video title
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
