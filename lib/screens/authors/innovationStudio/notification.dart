// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import the ProfileViewPage

// class NotificationPage extends StatelessWidget {
//   const NotificationPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Notifications'),
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
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: ListView.builder(
//             itemCount: 20, // Number of cards
//             itemBuilder: (context, index) {
//               return _buildNotificationCard(index);
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildNotificationCard(int index) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 10.0),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15.0),
//       ),
//       elevation: 5,
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Event Title ${index + 1}',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blue[800],
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Description of event ${index + 1}. This is where the update details will be shown. This is an example text for the notification card.',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Timestamp: ${DateTime.now().subtract(Duration(days: index)).toLocal()}',
//               style: TextStyle(fontSize: 14, color: Colors.grey[600]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'custom_bottom_navigation_bar.dart';
import 'profile_view.dart';
// import 'package:youtube_1/screens/sponsers/profile_view.dart';

// import '../../sponsers/custom_bottom_navigation_bar.dart';
// import '../../sponsers/profile_view.dart'; // Import the ProfileViewPage
//import 'package:youtube_1/pages/participant/innovation/home_page.dart'; // Import the HomePage
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int _currentIndex = 0; // Default to Home tab

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pop(context); // Assuming the HomePage is the previous page in the navigation stack
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
        title: Text('Notifications'),
        backgroundColor: Colors.blue[800], // Set the app bar color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when arrow back is pressed
          },
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: 20, // Number of cards
            itemBuilder: (context, index) {
              return _buildNotificationCard(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationCard(int index) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Event Title ${index + 1}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Description of event ${index + 1}. This is where the update details will be shown. This is an example text for the notification card.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Timestamp: ${DateTime.now().subtract(Duration(days: index)).toLocal()}',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
