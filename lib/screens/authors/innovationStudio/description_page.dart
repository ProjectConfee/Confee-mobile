// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import the ProfileViewPage

// class DescriptionPage extends StatelessWidget {
//   const DescriptionPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Description'),
//         backgroundColor: Colors.blue[800], // Set the app bar color
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back when arrow back is pressed
//           },
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_bag),
//             label: 'Packages',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Profile',
//           ),
//         ],
//         onTap: (index) {
//           if (index == 0) {
//             Navigator.pop(context); // Assuming the HomePage is the previous page in the navigation stack
//           } else if (index == 2) {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => ProfileViewPage()),
//             );
//           }
//         },
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'These are ICTer 2024',
//                   style: TextStyle(fontSize: 24),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'The International Conference on Advances in ICT for Emerging Regions (ICTer) is a prestigious gathering that continues the legacy of the International Information Technology Conference (IITC) held in Sri Lanka since 1998. Serving as a vital platform for global scholars, researchers, and practitioners, ICTer fosters collaboration and showcases cutting-edge advancements in information and communication technology. Through a rigorous peer-review process, high-quality papers are selected for presentation and publication with recognized publishers, driving both academic discourse and real-world impact. More than just a conference, ICTer cultivates a vibrant community where participants exchange ideas, forge partnerships, and collectively strive to address the challenges facing emerging regions. Committed to innovation, inclusivity, and excellence, ICTer invites all stakeholders to join in shaping a brighter future through the transformative power of ICT.',
//                   style: TextStyle(fontSize: 16),
//                   textAlign: TextAlign.justify,
//                 ),
//               ],
//             ),
//           ),
//         ),
        
//       ),
//     );
//   }
// }
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'profile_view.dart';// Import the ProfileViewPage
import 'custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  _DescriptionPageState createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  int _currentIndex = 0;

  void _onBottomNavBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 0) {
      Navigator.pop(context); // Assuming the HomePage is the previous page in the navigation stack
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileViewPage()),
      );
    }
    // Handle other cases if necessary
  }

  @override
  void initState() {
    super.initState();
    // Initialize WebView
    if (WebView.platform == SurfaceAndroidWebView()) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
        backgroundColor: Color.fromARGB(255, 7, 14, 145), // Set the app bar color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when arrow back is pressed
          },
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavBarTapped,
      ),
      body: WebView(
        initialUrl: 'https://icter.lk/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
