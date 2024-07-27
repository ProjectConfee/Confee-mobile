// // // home_page.dart

// // // ignore_for_file: prefer_const_constructors

// // import 'package:flutter/material.dart';
// // import 'package:youtube_1/pages/participant/innovation/util/emoticon_face.dart';
// // import 'package:youtube_1/pages/participant/innovation/util/exercise_tile.dart';
// // import 'package:youtube_1/pages/participant/innovation/resourceview_page.dart'; // Import ResourcePage
// // import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfileViewPage
// // import 'package:youtube_1/pages/participant/innovation/description_page.dart'; // Import DescriptionPage
// // import 'package:youtube_1/pages/participant/innovation/stall_map_page.dart'; // Import StallMapPage
// // import 'package:youtube_1/pages/participant/innovation/stall_checked.dart'; // Import StallCheckedPage
// // import 'package:youtube_1/pages/participant/innovation/notification.dart'; // Import NotificationPage
// // import 'package:youtube_1/pages/participant/innovation/qrscan_page.dart'; // Import QRScanPage
// // import 'package:youtube_1/pages/participant/innovation/competition.dart'; // Import CompetitionPage

// // class HomePage extends StatefulWidget {
// //   const HomePage({Key? key}) : super(key: key);

// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   void _navigateToResourcePage(BuildContext context) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => ResourcePage()),
// //     );
// //   }

// //   void _navigateToProfileViewPage(BuildContext context) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => ProfileViewPage()),
// //     );
// //   }

// //   void _navigateToDescriptionPage(BuildContext context) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => DescriptionPage()),
// //     );
// //   }

// //   void _navigateToStallMapPage(BuildContext context) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => StallMapPage()),
// //     );
// //   }

// //   void _navigateToStallCheckedPage(BuildContext context) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => StallCheckedPage()),
// //     );
// //   }

// //   void _navigateToNotificationPage(BuildContext context) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => NotificationPage()),
// //     );
// //   }

// //   void _navigateToQRScanPage(BuildContext context) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => QRScanPage()),
// //     );
// //   }

// //   void _navigateToCompetitionPage(BuildContext context) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => CompetitionPage()),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.blue[800],
// //       bottomNavigationBar: BottomNavigationBar(
// //         items: [
// //           BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,), label: 'Home'),
// //           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color:Colors.black,), label: 'Packages'),
// //           BottomNavigationBarItem(icon: Icon(Icons.account_circle,color:Colors.black,),label: 'Profile'),
// //         ],
// //         onTap: (index) {
// //           if (index == 2) {
// //             _navigateToProfileViewPage(context); // Navigate to profile view page on profile icon tap
// //           }
// //         },
// //       ),
// //       body: SafeArea(
// //         child: Column(
// //           children: [
// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 25.0),
// //               child: Column(
// //                 children: [
// //                   // Greeting row
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'Hi, Dewon!',
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               fontSize: 24,
// //                               fontWeight: FontWeight.bold,
// //                             ),
// //                           ),
// //                           SizedBox(height: 8),
// //                           Text(
// //                             '28 Jun, 2023',
// //                             style: TextStyle(
// //                               color: Colors.blue[200],
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                       // Notification
// //                       GestureDetector(
// //                         onTap: () {
// //                           _navigateToNotificationPage(context);
// //                         },
// //                         child: Container(
// //                           decoration: BoxDecoration(
// //                             color: Colors.blue[600],
// //                             borderRadius: BorderRadius.circular(12),
// //                           ),
// //                           padding: EdgeInsets.all(12),
// //                           child: Icon(
// //                             Icons.notifications,
// //                             color: Colors.white,
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                   SizedBox(height: 25),
// //                   // Search bar
// //                   Container(
// //                     decoration: BoxDecoration(
// //                       color: Color.fromARGB(255, 223, 234, 245),
// //                       borderRadius: BorderRadius.circular(12),
// //                     ),
// //                     padding: EdgeInsets.only(left: 15, top: 1, bottom: 1),

// //                     child: Row(
// //                       children: [
// //                         Icon(
// //                           Icons.search,
// //                           color: const Color.fromARGB(255, 0, 0, 0),
// //                         ),
// //                         SizedBox(width:15),
// //                         Expanded(
// //                           child: GestureDetector(
// //                             onTap: () {
// //                               _navigateToCompetitionPage(context); // Navigate to CompetitionPage on search icon tap
// //                             },
// //                             child: TextField(
// //                               style: TextStyle(color:    const Color.fromARGB(255, 0, 0, 0)),
// //                               decoration: InputDecoration(
// //                                 hintText: 'Search',
// //                                 hintStyle: TextStyle(color: const Color.fromARGB(255, 6, 6, 6)),
// //                                 border: InputBorder.none,
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                   SizedBox(height: 35),
// //                   // Four different faces
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                     children: [
// //                       // Stall Map
// //                       GestureDetector(
// //                         onTap: () {
// //                           _navigateToStallMapPage(context);
// //                         },
// //                         child: Column( 
// //                           children: [
// //                             EmoticonFace(icon: Icons.map,

                             
// //  // Map emoji
// //                             ),
// //                             SizedBox(height: 8),
// //                             Text(
// //                               'Stall Map',
// //                               style: TextStyle(color: Colors.white),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                       // Resources
// //                       GestureDetector(
// //                         onTap: () {
// //                           _navigateToResourcePage(context);
// //                         },
// //                         child: Column(
// //                           children: [
// //                             EmoticonFace(                      
// //                                   icon: Icons.business,
// // ),
// //                             SizedBox(height: 8),
// //                             Text(
// //                               'Resources',
// //                               style: TextStyle(color: Colors.white),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                       // Description
// //                       GestureDetector(
// //                         onTap: () {
// //                           _navigateToDescriptionPage(context); // Navigate to DescriptionPage
// //                         },
// //                         child: Column(
// //                           children: [
// //                             EmoticonFace(
// //                                                         icon: Icons.help,
// // ),
// //                             SizedBox(height: 8),
// //                             Text(
// //                               'Description',
// //                               style: TextStyle(color: Colors.white),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                       // QR Scan
// //                       // GestureDetector(
// //                       //   onTap: () {
// //                       //     _navigateToQRScanPage(context); // Navigate to QRScanPage
// //                       //   },
// //                       //   child: Column(
// //                       //     children: [
// //                       //       EmoticonFace(
// //                       //         icon: Icons.qr_code, // QR code icon
// //                       //       ),
// //                       //       SizedBox(height: 8),
// //                       //       Text(
// //                       //         'QR Scan',
// //                       //         style: TextStyle(color: Colors.white),
// //                       //       ),
// //                       //     ],
// //                       //   ),
// //                       // ),
// //                     ],
// //                   ),
// //                   SizedBox(height: 25),
// //                 ],
// //               ),
// //             ),
// //             SizedBox(height: 12),

// //             Expanded(
// //               child: Container(
// //                 padding: EdgeInsets.all(25),
// //                 color: Colors.grey[300],
// //                 child: Column(
// //                   children: [
// //                     // Exercise heading
// //                     Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         Text(
// //                           'Innovation Studio',
// //                           style: TextStyle(
// //                             fontWeight: FontWeight.bold,
// //                             fontSize: 20,
// //                           ),
// //                         ),
// //                         Icon(Icons.more_horiz),
// //                       ],
// //                     ),
// //                     SizedBox(height: 20),
// //                     // List of exercises
// //                     Expanded(
// //                       child: ListView(
// //                         children: [
// //                           ExerciseTile(
// //                             icon: Icons.search,
// //                             exerciseName: 'I’M A RESEARCHER COMPETITION ',
                            
// //                             onTap: () {
// //                               _navigateToCompetitionPage(context); // Navigate to CompetitionPage on tile tap
// //                             },
// //                           ),
// //                           ExerciseTile(
// //                             icon: Icons.check_circle,
// //                             exerciseName: 'STALL CHECKED IN PROCESS',
                            
// //                             onTap: () => _navigateToStallCheckedPage(context), // Navigate to StallCheckedPage
// //                           ),
// //                           ExerciseTile(
// //                             icon: Icons.qr_code,
// //                             exerciseName: 'Scan QR Code',
                           
// //                             onTap: () {
// //                               _navigateToQRScanPage(context); // Navigate to QRScanPage on QR code tile tap
// //                             },
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

//  import 'package:youtube_1/pages/participant/innovation/util/emoticon_face.dart';
// import 'package:youtube_1/pages/participant/innovation/util/exercise_tile.dart';
// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import the new widget
// import 'package:youtube_1/pages/participant/innovation/resourceview_page.dart';
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart';
// import 'package:youtube_1/pages/participant/innovation/description_page.dart';
// import 'package:youtube_1/pages/participant/innovation/stall_map_page.dart';
// import 'package:youtube_1/pages/participant/innovation/stall_checked.dart';
// import 'package:youtube_1/pages/participant/innovation/notification.dart';
// import 'package:youtube_1/pages/participant/innovation/qrscan_page.dart';
// import 'package:youtube_1/pages/participant/innovation/competition.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
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

//   void _navigateToResourcePage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => ResourcePage()),
//     );
//   }

//   void _navigateToProfileViewPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => ProfileViewPage()),
//     );
//   }

//   void _navigateToDescriptionPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => DescriptionPage()),
//     );
//   }

//   void _navigateToStallMapPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => StallMapPage()),
//     );
//   }

//   void _navigateToStallCheckedPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => StallCheckedPage()),
//     );
//   }

//   void _navigateToNotificationPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => NotificationPage()),
//     );
//   }

//   void _navigateToQRScanPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => QRScanPage()),
//     );
//   }

//   void _navigateToCompetitionPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => CompetitionPage()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[800],
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onBottomNavBarTapped,
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Column(
//                 children: [
//                   // Greeting row
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Hi, Dewon!',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(height: 8),
//                           Text(
//                             '28 Jun, 2023',
//                             style: TextStyle(
//                               color: Colors.blue[200],
//                             ),
//                           ),
//                         ],
//                       ),
//                       // Notification
//                       GestureDetector(
//                         onTap: () {
//                           _navigateToNotificationPage(context);
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.blue[600],
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           padding: EdgeInsets.all(12),
//                           child: Icon(
//                             Icons.notifications,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 25),
//                   // Search bar
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 223, 234, 245),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     padding: EdgeInsets.only(left: 15, top: 1, bottom: 1),
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.search,
//                           color: const Color.fromARGB(255, 0, 0, 0),
//                         ),
//                         SizedBox(width: 15),
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () {
//                               _navigateToCompetitionPage(context); // Navigate to CompetitionPage on search icon tap
//                             },
//                             child: TextField(
//                               style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
//                               decoration: InputDecoration(
//                                 hintText: 'Search',
//                                 hintStyle: TextStyle(color: const Color.fromARGB(255, 6, 6, 6)),
//                                 border: InputBorder.none,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 35),
//                   // Four different faces
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       // Stall Map
//                       GestureDetector(
//                         onTap: () {
//                           _navigateToStallMapPage(context);
//                         },
//                         child: Column(
//                           children: [
//                             EmoticonFace(icon: Icons.map),
//                             SizedBox(height: 8),
//                             Text(
//                               'Stall Map',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ],
//                         ),
//                       ),
//                       // Resources
//                       GestureDetector(
//                         onTap: () {
//                           _navigateToResourcePage(context);
//                         },
//                         child: Column(
//                           children: [
//                             EmoticonFace(icon: Icons.business),
//                             SizedBox(height: 8),
//                             Text(
//                               'Resources',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ],
//                         ),
//                       ),
//                       // Description
//                       GestureDetector(
//                         onTap: () {
//                           _navigateToDescriptionPage(context);
//                         },
//                         child: Column(
//                           children: [
//                             EmoticonFace(icon: Icons.help),
//                             SizedBox(height: 8),
//                             Text(
//                               'Description',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ],
//                         ),
//                       ),
//                       // QR Scan
//                       // GestureDetector(
//                       //   onTap: () {
//                       //     _navigateToQRScanPage(context); // Navigate to QRScanPage
//                       //   },
//                       //   child: Column(
//                       //     children: [
//                       //       EmoticonFace(
//                       //         icon: Icons.qr_code, // QR code icon
//                       //       ),
//                       //       SizedBox(height: 8),
//                       //       Text(
//                       //         'QR Scan',
//                       //         style: TextStyle(color: Colors.white),
//                       //       ),
//                       //     ],
//                       //   ),
//                       // ),
//                     ],
//                   ),
//                   SizedBox(height: 25),
//                 ],
//               ),
//             ),
//             SizedBox(height: 12),
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.all(25),
//                 color: Colors.grey[300],
//                 child: Column(
//                   children: [
//                     // Exercise heading
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Innovation Studio',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//                         Icon(Icons.more_horiz),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     // List of exercises
//                     Expanded(
//                       child: ListView(
//                         children: [
//                           ExerciseTile(
//                             icon: Icons.search,
//                             exerciseName: 'I’M A RESEARCHER COMPETITION ',
//                             onTap: () {
//                               _navigateToCompetitionPage(context);
//                             },
//                           ),
//                           ExerciseTile(
//                             icon: Icons.check_circle,
//                             exerciseName: 'STALL CHECKED IN PROCESS',
//                             onTap: () => _navigateToStallCheckedPage(context),
//                           ),
//                           ExerciseTile(
//                             icon: Icons.qr_code,
//                             exerciseName: 'Scan QR Code',
//                             onTap: () {
//                               _navigateToQRScanPage(context);
//                             },
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
// import 'package:youtube_1/utils/emoticon_face.dart';
// import 'package:youtube_1/utils/exercise_tile.dart';
// import 'package:youtube_1/pages/participant/innovation/resourceview_page.dart';
// import 'package:youtube_1/screens/sponsers/profile_view.dart';
// import 'package:youtube_1/screens/sponsers/description_page.dart';
// import 'package:youtube_1/pages/participant/innovation/stall_map_page.dart';
// import 'package:youtube_1/pages/participant/innovation/stall_checked.dart';
// import 'package:youtube_1/screens/sponsers/notification.dart';
// import 'package:youtube_1/pages/participant/innovation/qrscan_page.dart';
// import 'package:youtube_1/screens/sponsers/competition.dart'; // Ensure this import is correct
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart';

import '../../utils/emoticon_face.dart';
import '../../utils/exercise_tile.dart';
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
  int _currentIndex = 0;

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
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavBarTapped,
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
                    padding: EdgeInsets.only(left: 15, top: 1, bottom: 1),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              _navigateToCompetitionPage(context); // Navigate to CompetitionPage on search icon tap
                            },
                            child: TextField(
                              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
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
                  SizedBox(height: 35),
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
                            EmoticonFace(icon: Icons.map),
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
                            EmoticonFace(icon: Icons.business),
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
                          _navigateToDescriptionPage(context);
                        },
                        child: Column(
                          children: [
                            EmoticonFace(icon: Icons.help),
                            SizedBox(height: 8),
                            Text(
                              'Description',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      // QR Scan
                      // GestureDetector(
                      //   onTap: () {
                      //     _navigateToQRScanPage(context); // Navigate to QRScanPage
                      //   },
                      //   child: Column(
                      //     children: [
                      //       EmoticonFace(
                      //         icon: Icons.qr_code, // QR code icon
                      //       ),
                      //       SizedBox(height: 8),
                      //       Text(
                      //         'QR Scan',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 25),
                ],
              ),
            ),
            SizedBox(height: 12),
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


