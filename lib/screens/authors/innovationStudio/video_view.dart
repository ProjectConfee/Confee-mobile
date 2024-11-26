// // import 'package:flutter/material.dart';
// // import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar
// // import 'package:youtube_1/pages/participant/innovation/home_page.dart'; // Import HomePage
// // import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfileViewPage

// // class VideoViewPage extends StatefulWidget {
// //   const VideoViewPage({Key? key}) : super(key: key);

// //   @override
// //   _VideoViewPageState createState() => _VideoViewPageState();
// // }

// // class _VideoViewPageState extends State<VideoViewPage> {
// //   int _currentIndex = 1; // Default to Packages tab

// //   void _onTap(int index) {
// //     setState(() {
// //       _currentIndex = index;
// //     });

// //     switch (index) {
// //       case 0:
// //         // Navigate to the HomePage when the home icon is tapped
// //         Navigator.pushAndRemoveUntil(
// //           context,
// //           MaterialPageRoute(builder: (context) => HomePage()),
// //           (Route<dynamic> route) => false,
// //         );
// //         break;
// //       case 2:
// //         // Navigate to the ProfileViewPage when the profile icon is tapped
// //         Navigator.push(
// //           context,
// //           MaterialPageRoute(builder: (context) => ProfileViewPage()),
// //         );
// //         break;
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Video View'),
// //         backgroundColor: Colors.blue[800],
// //       ),
// //       backgroundColor: const Color.fromARGB(255, 236, 238, 240),
// //       bottomNavigationBar: CustomBottomNavigationBar(
// //         currentIndex: _currentIndex,
// //         onTap: _onTap,
// //       ),
// //       body: Center(
// //         child: Text(
// //           'Videos will be displayed here.',
// //           style: TextStyle(color: Colors.white, fontSize: 20),
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
//  import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfileViewPage

// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart';
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart';

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
//         title: Text('Videos'),
//         backgroundColor: Colors.blue[800],
//       ),
//       backgroundColor: Colors.blue[800],
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
//       ),
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.all(20),
//           color: Colors.grey[300],
//           child: ListView(
//             children: [
//               _buildVideoCard('https://youtu.be/aK4mUsPRZHk?si=K1gRXYkkoItv62EF'),
//               _buildVideoCard('https://youtu.be/ePzkMwOsKUM?si=sYkKY24JPBdrlujs'),
//               _buildVideoCard('https://youtu.be/j4M47qLTeJ4?si=vF3A9ytZ8WzHjjcb'),
//               _buildVideoCard('https://youtu.be/j4M47qLTeJ4?si=vF3A9ytZ8WzHjjcb'),
//               _buildVideoCard('https://youtu.be/j4M47qLTeJ4?si=vF3A9ytZ8WzHjjcb'),
//               _buildVideoCard('https://youtu.be/j4M47qLTeJ4?si=vF3A9ytZ8WzHjjcb'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildVideoCard(String url) {
//     String videoId = YoutubePlayer.convertUrlToId(url)!;
//     YoutubePlayerController _controller = YoutubePlayerController(
//       initialVideoId: videoId,
//       flags: YoutubePlayerFlags(
//         autoPlay: false,
//         mute: false,
//       ),
//     );

//     return Card(
//       elevation: 5,
//       margin: EdgeInsets.symmetric(vertical: 10),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Container(
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           gradient: LinearGradient(
//             colors: [Colors.white, Colors.grey[200]!],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Column(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(15),
//               child: YoutubePlayer(
//                 controller: _controller,
//                 showVideoProgressIndicator: true,
//                 progressIndicatorColor: Colors.blue,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Video Title', // You can update this with the actual video title
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart';
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart';
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart';

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
//         Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (context) => HomePage()),
//           (Route<dynamic> route) => false,
//         );
//         break;
//       case 2:
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
//         title: Text('Videos'),
//         backgroundColor: Colors.blue[800],
//       ),
//       backgroundColor: Colors.blue[800],
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
//       ),
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.all(20),
//           color: Colors.grey[300],
//           child: ListView(
//             children: [
//               _buildVideoCard('https://youtu.be/aK4mUsPRZHk?si=K1gRXYkkoItv62EF'),
//               _buildVideoCard('https://youtu.be/ePzkMwOsKUM?si=sYkKY24JPBdrlujs'),
//               _buildVideoCard('https://youtu.be/j4M47qLTeJ4?si=vF3A9ytZ8WzHjjcb'),
//               _buildVideoCard('https://youtu.be/j4M47qLTeJ4?si=vF3A9ytZ8WzHjjcb'),
//               _buildVideoCard('https://youtu.be/j4M47qLTeJ4?si=vF3A9ytZ8WzHjjcb'),
//               _buildVideoCard('https://youtu.be/j4M47qLTeJ4?si=vF3A9ytZ8WzHjjcb'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildVideoCard(String url) {
//     String videoId = YoutubePlayer.convertUrlToId(url)!;
//     YoutubePlayerController _controller = YoutubePlayerController(
//       initialVideoId: videoId,
//       flags: YoutubePlayerFlags(
//         autoPlay: false,
//         mute: false,
//       ),
//     );

//     return Card(
//       elevation: 5,
//       margin: EdgeInsets.symmetric(vertical: 10),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Container(
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           gradient: LinearGradient(
//             colors: [Colors.white, Colors.grey[200]!],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(15),
//               child: YoutubePlayer(
//                 controller: _controller,
//                 showVideoProgressIndicator: true,
//                 progressIndicatorColor: Colors.blue,
//                 onReady: () {
//                   print('Video is ready to play');
//                 },
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Video Title', // You can update this with the actual video title
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'home_page.dart';
import 'profile_view.dart';
import 'custom_bottom_navigation_bar.dart';

class VideoViewPage extends StatefulWidget {
  const VideoViewPage({Key? key}) : super(key: key);

  @override
  _VideoViewPageState createState() => _VideoViewPageState();
}

class _VideoViewPageState extends State<VideoViewPage> {
  //int _currentIndex = 1; // Default to Packages tab

  void _onTap(int index) {
    setState(() {
      //_currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage_Sponser()),
          (Route<dynamic> route) => false,
        );
        break;
      case 2:
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
        title: Text('Videos',style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF050C9B),
      ),
      backgroundColor:  Color(0xFF050C9B),
      bottomNavigationBar:HomeBottomBar(
       // currentIndex: _currentIndex,
        //onTap: _onTap,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Color.fromARGB(255, 255, 255, 255),
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
    final videoId = YoutubePlayer.convertUrlToId(url);
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: GestureDetector(
        onTap: () {
          if (videoId != null) {
            _playFullScreenVideo(url);
          } else {
            // Handle the case where videoId is null
            print('Invalid video URL');
          }
        },
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://img.youtube.com/vi/${videoId ?? ''}/hqdefault.jpg', // Thumbnail image
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Video Title', // Placeholder for the actual video title
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _playFullScreenVideo(String url) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FullScreenVideoPage(videoUrl: url),
      ),
    );
  }
}

class FullScreenVideoPage extends StatefulWidget {
  final String videoUrl;

  const FullScreenVideoPage({Key? key, required this.videoUrl}) : super(key: key);

  @override
  _FullScreenVideoPageState createState() => _FullScreenVideoPageState();
}

class _FullScreenVideoPageState extends State<FullScreenVideoPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
        backgroundColor: Colors.blue[800],
      ),
      body: SafeArea(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.blue,
          onReady: () {
            print('Video is ready to play');
          },
          bottomActions: [
            CurrentPosition(),
            ProgressBar(isExpanded: true),
            PlaybackSpeedButton(),
            FullScreenButton(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
