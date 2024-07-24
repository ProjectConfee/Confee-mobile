// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart';
// import 'package:youtube_1/pages/participant/innovation/image_page.dart';
// import 'package:youtube_1/pages/participant/innovation/util/exercise_tile2.dart';
// import 'package:youtube_1/pages/participant/innovation/document_view.dart'; // Import DocumentViewPage

// class ResourceCategoryPage extends StatelessWidget {
//   const ResourceCategoryPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Resource Category'),
//         backgroundColor: Colors.blue[800],
//       ),
//       backgroundColor: Colors.blue[800],
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Packages'),
//           BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
//         ],
//         onTap: (index) {
//           if (index == 0) {
//             Navigator.pushAndRemoveUntil(
//               context,
//               MaterialPageRoute(builder: (context) => HomePage()),
//               (Route<dynamic> route) => false,
//             );
//           }
//         },
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Column(
//                 children: [
//                   SizedBox(height: 33),
//                   Container(
//                     padding: EdgeInsets.all(0),
//                     child: Row(
//                       children: [
//                         SizedBox(width: 49),
//                         Text(
//                           'COMPANY 01',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 5),
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
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => ImagePage(),
//                                 ),
//                               );
//                             },
//                             child: ExerciseTile(
//                               imagePath: 'asset/images/file-image-fill.png',
//                               companyName: 'Images',
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => DocumentViewPage(), // Navigate to DocumentViewPage
//                                 ),
//                               );
//                             },
//                             child: ExerciseTile(
//                               imagePath: 'asset/images/article-line.png',
//                               companyName: 'Documents',
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => ImagePage(),
//                                 ),
//                               );
//                             },
//                             child: ExerciseTile(
//                               imagePath: 'asset/images/file-video-fill.png',
//                               companyName: 'Videos',
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => ImagePage(),
//                                 ),
//                               );
//                             },
//                             child: ExerciseTile(
//                               imagePath: 'asset/images/links-line.png',
//                               companyName: 'Links',
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => ImagePage(),
//                                 ),
//                               );
//                             },
//                             child: ExerciseTile(
//                               imagePath: 'asset/images/color-filter-fill.png',
//                               companyName: 'Others',
//                             ),
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

// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart';
// import 'package:youtube_1/pages/participant/innovation/image_page.dart';
// import 'package:youtube_1/pages/participant/innovation/util/exercise_tile2.dart';
// import 'package:youtube_1/pages/participant/innovation/document_view.dart'; // Import DocumentViewPage
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfileViewPage
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

// class ResourceCategoryPage extends StatefulWidget {
//   const ResourceCategoryPage({Key? key}) : super(key: key);

//   @override
//   _ResourceCategoryPageState createState() => _ResourceCategoryPageState();
// }

// class _ResourceCategoryPageState extends State<ResourceCategoryPage> {
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
//         title: Text('Resource Category'),
//         backgroundColor: Colors.blue[800],
//       ),
//       backgroundColor: Colors.blue[800],
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Column(
//                 children: [
//                   SizedBox(height: 33),
//                   Container(
//                     padding: EdgeInsets.all(0),
//                     child: Row(
//                       children: [
//                         SizedBox(width: 49),
//                         Text(
//                           'COMPANY 01',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 5),
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
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => ImagePage(),
//                                 ),
//                               );
//                             },
//                             child: ExerciseTile(
//                               imagePath: 'asset/images/file-image-fill.png',
//                               companyName: 'Images',
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => DocumentViewPage(), // Navigate to DocumentViewPage
//                                 ),
//                               );
//                             },
//                             child: ExerciseTile(
//                               imagePath: 'asset/images/article-line.png',
//                               companyName: 'Documents',
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => ImagePage(),
//                                 ),
//                               );
//                             },
//                             child: ExerciseTile(
//                               imagePath: 'asset/images/file-video-fill.png',
//                               companyName: 'Videos',
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => ImagePage(),
//                                 ),
//                               );
//                             },
//                             child: ExerciseTile(
//                               imagePath: 'asset/images/links-line.png',
//                               companyName: 'Links',
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => ImagePage(),
//                                 ),
//                               );
//                             },
//                             child: ExerciseTile(
//                               imagePath: 'asset/images/color-filter-fill.png',
//                               companyName: 'Others',
//                             ),
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

// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart';
// import 'package:youtube_1/pages/participant/innovation/image_page.dart';
// import 'package:youtube_1/pages/participant/innovation/document_view.dart'; // Import DocumentViewPage
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfileViewPage
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

// class ResourceCategoryPage extends StatefulWidget {
//   const ResourceCategoryPage({Key? key}) : super(key: key);

//   @override
//   _ResourceCategoryPageState createState() => _ResourceCategoryPageState();
// }

// class _ResourceCategoryPageState extends State<ResourceCategoryPage> {
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
//         title: Text('Resource Category'),
//         backgroundColor: Colors.blue[800],
//       ),
//       backgroundColor: Colors.blue[800],
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
//               child: Text(
//                 'COMPANY 01',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.all(20),
//                 color: Colors.grey[300],
//                 child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, // Number of columns
//                     crossAxisSpacing: 10, // Horizontal spacing between cards
//                     mainAxisSpacing: 10, // Vertical spacing between cards
//                   ),
//                   itemCount: 5, // Total number of cards
//                   itemBuilder: (context, index) {
//                     return _buildCategoryTile(
//                       imagePath: _getImagePath(index),
//                       title: _getTitle(index),
//                       onTap: () {
//                         _navigateToPage(index);
//                       },
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCategoryTile({
//     required String imagePath,
//     required String title,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         elevation: 5,
//         margin: EdgeInsets.all(0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Stack(
//           children: [
//             Container(
//               height: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(65),
//                 gradient: LinearGradient(
//                   colors: [Colors.white, Colors.grey[200]!],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//             ),
//             Positioned.fill(
//               child: Align(
//                 alignment: Alignment.center,
//                 child: CircleAvatar(
//                   backgroundImage: AssetImage(imagePath),
//                   radius: 40,
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 10,
//               left: 10,
//               child: Text(
//                 title,
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 10,
//               right: 10,
//               child: Icon(Icons.arrow_forward_ios, color: Colors.black),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   String _getImagePath(int index) {
//     switch (index) {
//       case 0:
//         return 'asset/images/file-image-fill.png';
//       case 1:
//         return 'asset/images/article-line.png';
//       case 2:
//         return 'asset/images/file-video-fill.png';
//       case 3:
//         return 'asset/images/links-line.png';
//       case 4:
//         return 'asset/images/color-filter-fill.png';
//       default:
//         return 'asset/images/file-image-fill.png';
//     }
//   }

//   String _getTitle(int index) {
//     switch (index) {
//       case 0:
//         return 'Images';
//       case 1:
//         return 'Documents';
//       case 2:
//         return 'Videos';
//       case 3:
//         return 'Links';
//       case 4:
//         return 'Others';
//       default:
//         return 'Unknown';
//     }
//   }

//   void _navigateToPage(int index) {
//     switch (index) {
//       case 0:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ImagePage(),
//           ),
//         );
//         break;
//       case 1:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DocumentViewPage(),
//           ),
//         );
//         break;
//       case 2:
//       case 3:
//       case 4:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ImagePage(),
//           ),
//         );
//         break;
//     }
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart';
// import 'package:youtube_1/pages/participant/innovation/image_page.dart';
// import 'package:youtube_1/pages/participant/innovation/document_view.dart'; // Import DocumentViewPage
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfileViewPage
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

// class ResourceCategoryPage extends StatefulWidget {
//   const ResourceCategoryPage({Key? key}) : super(key: key);

//   @override
//   _ResourceCategoryPageState createState() => _ResourceCategoryPageState();
// }

// class _ResourceCategoryPageState extends State<ResourceCategoryPage> {
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
//         title: Text('Resource Category'),
//         backgroundColor: Colors.blue[800],
//       ),
//       backgroundColor: Colors.blue[800],
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
//               child: Text(
//                 'COMPANY 01',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.all(20),
//                 color: Colors.grey[300],
//                 child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, // Number of columns
//                     crossAxisSpacing: 10, // Horizontal spacing between cards
//                     mainAxisSpacing: 10, // Vertical spacing between cards
//                   ),
//                   itemCount: 5, // Total number of cards
//                   itemBuilder: (context, index) {
//                     return _buildCategoryTile(
//                       imagePath: _getImagePath(index),
//                       title: _getTitle(index),
//                       onTap: () {
//                         _navigateToPage(index);
//                       },
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCategoryTile({
//     required String imagePath,
//     required String title,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         elevation: 5,
//         margin: EdgeInsets.all(0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Stack(
//           children: [
//             // Background Layer
//             Positioned.fill(
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   image: DecorationImage(
//                     image: AssetImage(imagePath),
//                     fit: BoxFit.cover, // Cover the card with the image
//                   ),
//                 ),
//               ),
//             ),
//             // Overlay for Title and Icon
//             Positioned(
//               bottom: 0,
//               left: 0,
//               right: 0,
//               child: Container(
//                 padding: EdgeInsets.all(10),
//                 color: Colors.black.withOpacity(0.6), // Semi-transparent background for text
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       title,
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     Icon(Icons.arrow_forward_ios, color: Colors.white),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   String _getImagePath(int index) {
//     switch (index) {
//       case 0:
//         return 'asset/images/file-image-fill.png';
//       case 1:
//         return 'asset/images/article-line.png';
//       case 2:
//         return 'asset/images/file-video-fill.png';
//       case 3:
//         return 'asset/images/links-line.png';
//       case 4:
//         return 'asset/images/color-filter-fill.png';
//       default:
//         return 'asset/images/file-image-fill.png';
//     }
//   }

//   String _getTitle(int index) {
//     switch (index) {
//       case 0:
//         return 'Images';
//       case 1:
//         return 'Documents';
//       case 2:
//         return 'Videos';
//       case 3:
//         return 'Links';
//       case 4:
//         return 'Others';
//       default:
//         return 'Unknown';
//     }
//   }

//   void _navigateToPage(int index) {
//     switch (index) {
//       case 0:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ImagePage(),
//           ),
//         );
//         break;
//       case 1:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DocumentViewPage(),
//           ),
//         );
//         break;
//       case 2:
//       case 3:
//       case 4:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ImagePage(),
//           ),
//         );
//         break;
//     }
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart';
// import 'package:youtube_1/pages/participant/innovation/image_page.dart';
// import 'package:youtube_1/pages/participant/innovation/document_view.dart'; // Import DocumentViewPage
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfileViewPage
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

// class ResourceCategoryPage extends StatefulWidget {
//   const ResourceCategoryPage({Key? key}) : super(key: key);

//   @override
//   _ResourceCategoryPageState createState() => _ResourceCategoryPageState();
// }

// class _ResourceCategoryPageState extends State<ResourceCategoryPage> {
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
//         title: Text('Resource Category'),
//         backgroundColor: Colors.blue[800],
//       ),
//       backgroundColor: Colors.blue[800],
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
//               child: Text(
//                 'COMPANY 01',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.all(20),
//                 color: Colors.grey[300],
//                 child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, // Number of columns
//                     crossAxisSpacing: 10, // Horizontal spacing between cards
//                     mainAxisSpacing: 10, // Vertical spacing between cards
//                   ),
//                   itemCount: 5, // Total number of cards
//                   itemBuilder: (context, index) {
//                     return _buildCategoryTile(
//                       imagePath: _getImagePath(index),
//                       title: _getTitle(index),
//                       onTap: () {
//                         _navigateToPage(index);
//                       },
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCategoryTile({
//     required String imagePath,
//     required String title,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         elevation: 5,
//         margin: EdgeInsets.all(0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Stack(
//           children: [
//             Container(
//               height: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 gradient: LinearGradient(
//                   colors: [Colors.white, Colors.grey[200]!],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//             ),
//             Positioned.fill(
//               child: Align(
//                 alignment: Alignment.center,
//                 child: CircleAvatar(
//                   backgroundImage: AssetImage(imagePath),
//                   radius: 50, // Increased the radius to enlarge the image
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 10,
//               left: 10,
//               child: Text(
//                 title,
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 10,
//               right: 10,
//               child: Icon(Icons.arrow_forward_ios, color: Colors.black),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   String _getImagePath(int index) {
//     switch (index) {
//       case 0:
//         return 'asset/images/file-image-fill.png';
//       case 1:
//         return 'assets/images/article-line.png';
//       case 2:
//         return 'assets/images/file-video-fill.png';
//       case 3:
//         return 'assets/images/links-line.png';
//       case 4:
//         return 'assets/images/color-filter-fill.png';
//       default:
//         return 'assets/images/file-image-fill.png';
//     }
//   }

//   String _getTitle(int index) {
//     switch (index) {
//       case 0:
//         return 'Images';
//       case 1:
//         return 'Documents';
//       case 2:
//         return 'Videos';
//       case 3:
//         return 'Links';
//       case 4:
//         return 'Others';
//       default:
//         return 'Unknown';
//     }
//   }

//   void _navigateToPage(int index) {
//     switch (index) {
//       case 0:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ImagePage(),
//           ),
//         );
//         break;
//       case 1:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DocumentViewPage(),
//           ),
//         );
//         break;
//       case 2:
//       case 3:
//       case 4:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ImagePage(),
//           ),
//         );
//         break;
//     }
//   }
// }



import 'package:flutter/material.dart';
import 'package:youtube_1/pages/participant/innovation/home_page.dart';
import 'package:youtube_1/pages/participant/innovation/image_page.dart';
import 'package:youtube_1/pages/participant/innovation/document_view.dart'; // Import DocumentViewPage
import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfileViewPage
import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

class ResourceCategoryPage extends StatefulWidget {
  const ResourceCategoryPage({Key? key}) : super(key: key);

  @override
  _ResourceCategoryPageState createState() => _ResourceCategoryPageState();
}

class _ResourceCategoryPageState extends State<ResourceCategoryPage> {
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
        title: Text('Resource Category'),
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Text(
                'COMPANY 01',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.grey[300],
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 10, // Horizontal spacing between cards
                    mainAxisSpacing: 10, // Vertical spacing between cards
                  ),
                  itemCount: 5, // Total number of cards
                  itemBuilder: (context, index) {
                    return _buildCategoryTile(
                      imagePath: _getImagePath(index),
                      title: _getTitle(index),
                      onTap: () {
                        _navigateToPage(index);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryTile({
    required String imagePath,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.grey[200]!],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60), // Circular shape
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain, // Ensure the image is not cropped
                    width: 50, // Adjust the size as needed
                    height: 60, // Adjust the size as needed
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Icon(Icons.arrow_forward_ios, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  String _getImagePath(int index) {
    switch (index) {
      case 0:
        return 'asset/images/file-image-fill.png';
      case 1:
        return 'asset/images/article-line.png';
      case 2:
        return 'asset/images/file-video-fill.png';
      case 3:
        return 'asset/images/links-line.png';
      case 4:
        return 'asset/images/color-filter-fill.png';
      default:
        return 'asset/images/file-image-fill.png';
    }
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Images';
      case 1:
        return 'Documents';
      case 2:
        return 'Videos';
      case 3:
        return 'Links';
      case 4:
        return 'Others';
      default:
        return 'Unknown';
    }
  }

  void _navigateToPage(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ImagePage(),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DocumentViewPage(),
          ),
        );
        break;
      case 2:
      case 3:
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ImagePage(),
          ),
        );
        break;
    }
  }
}
