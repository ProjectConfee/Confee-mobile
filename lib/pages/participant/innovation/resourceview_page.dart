// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/util/exercise_tile3.dart';
// import 'package:youtube_1/pages/participant/innovation/resourcecategory.dart';  // Import the ResourceCategoryPage

// class ResourcePage extends StatelessWidget {
//   const ResourcePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Resources'),
//         backgroundColor: Colors.blue[800],  // Set the app bar color
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back when arrow back is pressed
//           },
          
//         ),

//       ),

//       backgroundColor: Colors.blue[800],
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_bag), label: 'Packages'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle), label: 'Profile'),
//         ],
//         onTap: (index) {
//           if (index == 0) {
//             Navigator.pop(context);  // Assuming the HomePage is the previous page in the navigation stack
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
//                   // Greeting row (if needed)
//                                 SizedBox(height:33),
//                   // Search bar (if needed)
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.all(25),
//                 color: Colors.grey[300],
//                 child: Column(
//                   children: [
//                     // Exercise heading (if needed)
//                     // List of exercises
//                     Expanded(
//                       child: ListView(
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) => ResourceCategoryPage()),
//                               );
//                             },
//                             child: ExerciseTile(
//                               imagePath: 'asset/images/silver_badge.png',
//                               companyName: 'COMPANY 01',
//                               description: 'Leading company of SL',
//                             ),
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/gold_badge.png',
//                             companyName: 'COMPANY 02',
//                             description: 'Now we are open for You',
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/platinum_badge.png',
//                             companyName: 'COMPANY 03',
//                             description: 'World famous company',
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/silver_badge.png',
//                             companyName: 'COMPANY 04',
//                             description: 'For YOU',
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/gold_badge.png',
//                             companyName: 'COMPANY 05',
//                             description: 'Happy coding',
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/silver_badge.png',
//                             companyName: 'COMPANY 06',
//                             description: 'WSO2 WSO2',
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

// ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/util/exercise_tile3.dart';
// import 'package:youtube_1/pages/participant/innovation/resourcecategory.dart';  // Import the ResourceCategoryPage
// import 'home_page.dart'; // Import HomePage
// import 'profile_view.dart'; // Import ProfileViewPage
// import 'custom_bottom_navigation_bar.dart'; // Import the CustomBottomNavigationBar

// class ResourcePage extends StatefulWidget {
//   const ResourcePage({Key? key}) : super(key: key);

//   @override
//   _ResourcePageState createState() => _ResourcePageState();
// }

// class _ResourcePageState extends State<ResourcePage> {
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
//         title: Text('Resources'),
//         backgroundColor: Colors.blue[800],  // Set the app bar color
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back when arrow back is pressed
//           },
//         ),
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
//                   // Greeting row (if needed)
//                   SizedBox(height: 33),
//                   // Search bar (if needed)
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.all(25),
//                 color: Colors.grey[300],
//                 child: Column(
//                   children: [
//                     // Exercise heading (if needed)
//                     // List of exercises
//                     Expanded(
//                       child: ListView(
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) => ResourceCategoryPage()),
//                               );
//                             },
//                             child: ExerciseTile(
//                               imagePath: 'asset/images/silver_badge.png',
//                               companyName: 'COMPANY 01',
//                               description: 'Leading company of SL',
//                             ),
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/gold_badge.png',
//                             companyName: 'COMPANY 02',
//                             description: 'Now we are open for You',
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/platinum_badge.png',
//                             companyName: 'COMPANY 03',
//                             description: 'World famous company',
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/silver_badge.png',
//                             companyName: 'COMPANY 04',
//                             description: 'For YOU',
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/gold_badge.png',
//                             companyName: 'COMPANY 05',
//                             description: 'Happy coding',
//                           ),
//                           ExerciseTile(
//                             imagePath: 'asset/images/silver_badge.png',
//                             companyName: 'COMPANY 06',
//                             description: 'WSO2 WSO2',
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
import 'package:youtube_1/pages/participant/innovation/resourcecategory.dart';  // Import the ResourceCategoryPage
import 'home_page.dart'; // Import HomePage
import 'profile_view.dart'; // Import ProfileViewPage
import 'custom_bottom_navigation_bar.dart'; // Import the CustomBottomNavigationBar

class ResourcePage extends StatefulWidget {
  const ResourcePage({Key? key}) : super(key: key);

  @override
  _ResourcePageState createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
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
        title: Text('Resources'),
        backgroundColor: Colors.blue[800],  // Set the app bar color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when arrow back is pressed
          },
        ),
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
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  SizedBox(height: 33),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ResourceCategoryPage()),
                              );
                            },
                            child: ProfessionalTile(
                              imagePath: 'asset/images/silver_badge.png',
                              companyName: 'COMPANY 01',
                              description: 'Leading company of SL',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ResourceCategoryPage()),
                              );
                            },
                            child: ProfessionalTile(
                              imagePath: 'asset/images/gold_badge.png',
                              companyName: 'COMPANY 02',
                              description: 'Now we are open for You',
                            ),
                          ),
                          ProfessionalTile(
                            imagePath: 'asset/images/platinum_badge.png',
                            companyName: 'COMPANY 03',
                            description: 'World famous company',
                          ),
                          ProfessionalTile(
                            imagePath: 'asset/images/silver_badge.png',
                            companyName: 'COMPANY 04',
                            description: 'For YOU',
                          ),
                          ProfessionalTile(
                            imagePath: 'asset/images/gold_badge.png',
                            companyName: 'COMPANY 05',
                            description: 'Happy coding',
                          ),
                          ProfessionalTile(
                            imagePath: 'asset/images/silver_badge.png',
                            companyName: 'COMPANY 06',
                            description: 'WSO2 WSO2',
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

class ProfessionalTile extends StatelessWidget {
  final String imagePath;
  final String companyName;
  final String description;

  const ProfessionalTile({
    Key? key,
    required this.imagePath,
    required this.companyName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 30,
        ),
        title: Text(
          companyName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ResourceCategoryPage()),
          );
        },
      ),
    );
  }
}

