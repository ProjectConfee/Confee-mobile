// // // ignore_for_file: prefer_const_constructors

// // import 'package:flutter/material.dart';
// // import 'package:youtube_1/pages/participant/innovation/home_page.dart'; // Import HomePage
// // import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfilePage

// // class CompetitionPage extends StatelessWidget {
// //   const CompetitionPage({Key? key}) : super(key: key);

// //   void _navigateToHomePage(BuildContext context) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => HomePage()),
// //     );
// //   }

// //   void _navigateToProfilePage(BuildContext context) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => ProfileViewPage()),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Competition'),
// //         backgroundColor: Colors.blue[800],
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             Icon(
// //               Icons.search,
// //               size: 150,
// //               color: Colors.blue[800],
// //             ),
// //             SizedBox(height: 20),
// //             Text(
// //               'Search Competition',
// //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //             ),
// //             SizedBox(height: 10),
// //             Text(
// //               'Add your competition details here!',
// //               style: TextStyle(fontSize: 16),
// //             ),
// //           ],
// //         ),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         items: [
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home),
// //             label: 'Home',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.shopping_bag),
// //             label: 'Packages',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.account_circle),
// //             label: 'Profile',
// //           ),
// //         ],
// //         selectedItemColor: Colors.blue[800],
// //         onTap: (index) {
// //           switch (index) {
// //             case 0:
// //               _navigateToHomePage(context); // Navigate to home page
// //               break;
// //             case 1:
// //               // Handle action for packages or navigate to packages page
// //               break;
// //             case 2:
// //               _navigateToProfilePage(context); // Navigate to profile page
// //               break;
// //           }
// //         },
// //       ),
// //     );
// //   }
// // }
// //import 'package:flutter/material.dart';
// //import 'package:youtube_1/pages/participant/innovation/home_page.dart';
// //import 'package:youtube_1/pages/participant/innovation/profile_view.dart';

// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart';
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart';
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import the new widget

// class CompetitionPage extends StatefulWidget {
//   const CompetitionPage({Key? key}) : super(key: key);

//   @override
//   _CompetitionPageState createState() => _CompetitionPageState();
// }

// class _CompetitionPageState extends State<CompetitionPage> {
//   int _currentIndex = 0;

//   void _onBottomNavBarTapped(int index) {
//     switch (index) {
//       case 0:
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => HomePage()),
//         );
//         break;
//       case 1:
//         // Handle action for packages or navigate to packages page
//         break;
//       case 2:
//         Navigator.pushReplacement(
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
//         title: Text('Competition'),
//         backgroundColor: Colors.blue[800],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(
//               Icons.search,
//               size: 150,
//               color: Colors.blue[800],
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Search Competition',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Add your competition details here!',
//               style: TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onBottomNavBarTapped,
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart'; // Import the WebView package
import 'package:youtube_1/pages/participant/innovation/home_page.dart';
import 'package:youtube_1/pages/participant/innovation/profile_view.dart';
import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

class CompetitionPage extends StatefulWidget {
  const CompetitionPage({Key? key}) : super(key: key);

  @override
  _CompetitionPageState createState() => _CompetitionPageState();
}

class _CompetitionPageState extends State<CompetitionPage> {
  int _currentIndex = 0;

  void _onBottomNavBarTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
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

  @override
  void initState() {
    super.initState();
    if (WebView.platform == SurfaceAndroidWebView()) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Competition'),
        backgroundColor: Colors.blue[800],
      ),
      body: WebView(
        initialUrl: 'https://icter.lk/i-am-a-researcher/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavBarTapped,
      ),
    );
  }
}
