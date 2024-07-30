
// import 'package:flutter/material.dart';
// import 'home_page.dart';
// import 'image_page.dart';
// import 'document_view.dart'; // Import DocumentViewPage
// import 'profile_view.dart'; // Import ProfileViewPage
// import 'video_view.dart'; // Import VideoViewPage
// import 'view_link.dart'; // Import ViewLinkPage
// import 'others.dart'; // Import OthersPage
// import 'custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

// class ResourceCategoryPage extends StatefulWidget {
//   const ResourceCategoryPage({Key? key}) : super(key: key);

//   @override
//   _ResourceCategoryPageState createState() => _ResourceCategoryPageState();
// }

// class _ResourceCategoryPageState extends State<ResourceCategoryPage> {
//  // int _currentIndex = 1; // Default to Packages tab

//   void _onTap(int index) {
//     setState(() {
//       //_currentIndex = index;
//     });

//     switch (index) {
//       case 0:
//         // Navigate to the HomePage when the home icon is tapped
//         Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (context) => HomePage_Sponser()),
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
//         title: Text('Resource Category',style: TextStyle(color: Colors.white)),
//         backgroundColor: Color(0xFF050C9B),
//       ),
//       backgroundColor: Color(0xFF050C9B),
//       bottomNavigationBar: HomeBottomBar(
//         //currentIndex: _currentIndex,
//         //onTap: _onTap,
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
//                 //color: Colors.grey[300],
//                 color: Colors.white,
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
//                   //begin: Alignment.topLeft,
//                   //end: Alignment.bottomRight,
//                 ),
//               ),
//             ),
//             Positioned.fill(
//               child: Align(
//                 alignment: Alignment.center,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(60), // Circular shape
//                   child: Image.asset(
//                     imagePath,
//                     fit: BoxFit.contain, // Ensure the image is not cropped
//                     width: 50, // Adjust the size as needed
//                     height: 60, // Adjust the size as needed
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 10,
//                left: 50,
//                right: 50, 
//               child: Text(
//                 title,
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
                  
                  
//                 ),
                
//               ),
              
              
//             ),
//             // Positioned(
//             //   bottom: 10,
//             //   right: 10,
//             //   //child: Icon(Icons.arrow_forward_ios, color: Colors.black),
//             // ),
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
//         return 'Docs';
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
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => VideoViewPage(),
//           ),
//         );
//         break;
//       case 3:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ViewLinkPage(),
//           ),
//         );
//         break;
//       case 4:
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => OthersPage(),
//           ),
//         );
//         break;
//     }
//   }
// }
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'image_page.dart';
import 'document_view.dart'; // Import DocumentViewPage
import 'profile_view.dart'; // Import ProfileViewPage
import 'video_view.dart'; // Import VideoViewPage
import 'view_link.dart'; // Import ViewLinkPage
import 'others.dart'; // Import OthersPage
import 'custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

class ResourceCategoryPage extends StatefulWidget {
  const ResourceCategoryPage({Key? key}) : super(key: key);

  @override
  _ResourceCategoryPageState createState() => _ResourceCategoryPageState();
}

class _ResourceCategoryPageState extends State<ResourceCategoryPage> {
  // int _currentIndex = 1; // Default to Packages tab

  void _onTap(int index) {
    setState(() {
      //_currentIndex = index;
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
        title: Text('Resource Category', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF050C9B),
      ),
      backgroundColor: Color(0xFF050C9B),
      bottomNavigationBar: HomeBottomBar(
        // currentIndex: _currentIndex,
        // onTap: _onTap,
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
                color: Colors.white,
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
                    fit: BoxFit.contain,
                    width: 50,
                    height: 60,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 50,
              right: 50,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white, // Arrow color set to white
                size: 20, // Adjust the size of the arrow icon as needed
              ),
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
        return 'Docs';
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoViewPage(),
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewLinkPage(),
          ),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OthersPage(),
          ),
        );
        break;
    }
  }
}
