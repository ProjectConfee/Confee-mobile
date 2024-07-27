// // // ignore_for_file: prefer_const_constructors

// // import 'package:flutter/material.dart';
// // import 'package:youtube_1/pages/participant/innovation/home_page.dart'; // Import the HomePage
// // import 'package:youtube_1/pages/participant/innovation/util/exercise_tile4.dart';


// // class ImagePage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Images'),
// //         backgroundColor: Colors.blue[800],
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back),
// //           onPressed: () {
// //             Navigator.pop(context);
// //           },
// //         ),
// //       ),
// //       backgroundColor: Colors.blue[800],
// //       bottomNavigationBar: BottomNavigationBar(
// //         items: [
// //           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
// //           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Packages'),
// //           BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
// //         ],
// //         onTap: (index) {
// //           if (index == 0) {
// //             Navigator.pushAndRemoveUntil(
// //               context,
// //               MaterialPageRoute(builder: (context) => HomePage()),
// //               (Route<dynamic> route) => false,
// //             );
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
// //                         children: [],
// //                       ),
// //                       // Notification
// //                       /*Container(
// //                         decoration: BoxDecoration(
// //                           color: Colors.blue[600],
// //                           borderRadius: BorderRadius.circular(12),
// //                         ),
// //                         padding: EdgeInsets.all(12),
// //                         child: Icon(
// //                           Icons.notifications,
// //                           color: Colors.white,
// //                         ),
// //                       ),*/
// //                     ],
// //                   ),
// //                   SizedBox(height: 0),
// //                   // Search bar
// //                   Container(
// //                     padding: EdgeInsets.all(12),
// //                     child: Row(
// //                       children: [
                        
                        
// //                       ],
// //                     ),
// //                   ),
// //                   SizedBox(height: 11),
// //                   // How do you feel?
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [],
// //                   ),
// //                   // Four different faces
// //                 ],
// //               ),
// //             ),
// //             Expanded(
// //               child: Container(
// //                 padding: EdgeInsets.all(25),
// //                 color: Colors.grey[300],
// //                 child: Column(
// //                   children: [
// //                     // Exercise heading
// //                     Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [],
// //                     ),
// //                     SizedBox(height: 20),
// //                     // List of exercises
// //                     Expanded(
// //                       child: ListView(
// //                         children: [
// //                           ExerciseTile(
// //                             imagePath: 'asset/images/download.png',
// //                             //companyName: 'Documents',
// //                             //description: 'Leading company of SL',
// //                           ),
// //                           ExerciseTile(
// //                             imagePath: 'asset/images/v.png',
// //                            // companyName: 'Videos',
// //                             //description: 'Now we are open for You',
// //                           ),
// //                           ExerciseTile(
// //                             imagePath: 'asset/images/vv.png',
// //                             //companyName: 'Images',
// //                             //description: 'World famous company',
// //                           ),
// //                           ExerciseTile(
// //                             imagePath: 'asset/images/R.png',
// //                             //companyName: 'Links',
// //                             //description: 'For YOU',
// //                           ),
// //                           ExerciseTile(
// //                             imagePath: 'asset/images/download.png',
// //                             //companyName: 'Others',
// //                             //description: 'Happy coding',
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
// // image_page.dart

// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart'; // Import the HomePage
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfilePage
// import 'package:youtube_1/pages/participant/innovation/util/exercise_tile4.dart';
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

// class ImagePage extends StatefulWidget {
//   @override
//   _ImagePageState createState() => _ImagePageState();
// }

// class _ImagePageState extends State<ImagePage> {
//   int _currentIndex = 0;

//   void _onBottomNavBarTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });

//     if (index == 0) {
//       Navigator.pushAndRemoveUntil(
//         context,
//         MaterialPageRoute(builder: (context) => HomePage()),
//         (Route<dynamic> route) => false,
//       );
//     } else if (index == 2) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => ProfileViewPage()),
//       );
//     }
//     // Handle other cases if necessary
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Images'),
//         backgroundColor: Colors.blue[800],
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
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
//                   SizedBox(height: 0),
//                   Container(
//                     padding: EdgeInsets.all(12),
//                     child: Row(
//                       children: [],
//                     ),
//                   ),
//                   SizedBox(height: 11),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [],
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.all(25),
//                 color: Colors.grey[300],
//                 child: Column(
//                   children: [
//                     SizedBox(height: 20),
//                     Expanded(
//                       child: ListView(
//                         children: [
//                           ExerciseTile(
//                             imagePath: 'asset/images/download.png',
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/v.png',
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/vv.png',
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/R.png',
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/download.png',
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

// image_view.dart

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:youtube_1/screens/sponsers/home_page.dart'; // Import the HomePage
// import 'package:youtube_1/screens/sponsers/profile_view.dart'; // Import ProfilePage
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart';

import 'custom_bottom_navigation_bar.dart';
import 'home_page.dart';
import 'profile_view.dart'; // Import CustomBottomNavigationBar

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int _currentIndex = 0;

  void _onBottomNavBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 0) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomePage_Sponser()),
        (Route<dynamic> route) => false,
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileViewPage()),
      );
    }
    // Handle other cases if necessary
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
                  SizedBox(height: 0),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [],
                    ),
                  ),
                  SizedBox(height: 11),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: [
                          Image.asset('asset/images/download.png', fit: BoxFit.cover),
                          Image.asset('asset/images/v.png', fit: BoxFit.cover),
                          Image.asset('asset/images/vv.png', fit: BoxFit.cover),
                          Image.asset('asset/images/R.png', fit: BoxFit.cover),
                          Image.asset('asset/images/download.png', fit: BoxFit.cover),
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

