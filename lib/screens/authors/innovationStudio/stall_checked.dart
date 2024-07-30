// // // ignore_for_file: prefer_const_constructors

// // import 'package:flutter/material.dart';
// // import 'package:youtube_1/pages/participant/innovation/home_page.dart'; // Import HomePage for navigation
// // import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfilePage for navigation

// // class StallCheckedPage extends StatelessWidget {
// //   const StallCheckedPage({Key? key}) : super(key: key);

// //   void _navigateToHomePage(BuildContext context) {
// //     Navigator.pushAndRemoveUntil(
// //       context,
// //       MaterialPageRoute(builder: (context) => HomePage()),
// //       (route) => false, // Clear all routes on the stack and push HomePage
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
// //         title: Text('Stall Checked'),
// //         backgroundColor: Colors.blue[800], // Set the app bar color to blue
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back),
// //           onPressed: () {
// //             Navigator.pop(context); // Navigate back when arrow back is pressed
// //           },
// //         ),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text(
// //               'Stall Checked Page',
// //               style: TextStyle(fontSize: 24),
// //             ),
// //             SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: () {
// //                 _navigateToHomePage(context); // Navigate to HomePage on button press
// //               },
// //               child: Text('Go to Home'),
// //             ),
// //             SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: () {
// //                 _navigateToProfilePage(context); // Navigate to ProfilePage on button press
// //               },
// //               child: Text('Go to Profile'),
// //             ),
// //           ],
// //         ),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         items: [
// //           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.shopping_bag),
// //             label: 'Packages',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.account_circle),
// //             label: 'Profile',
// //           ),
// //         ],
// //         onTap: (index) {
// //           if (index == 0) {
// //             _navigateToHomePage(context); // Navigate to HomePage
// //           } else if (index == 2) {
// //             _navigateToProfilePage(context); // Navigate to ProfilePage
// //           }
// //         },
// //       ),
// //     );
// //   }
// // }
// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart'; // Import HomePage for navigation
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfilePage for navigation
// import 'package:youtube_1/pages/participant/innovation/custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

// class StallCheckedPage extends StatefulWidget {
//   const StallCheckedPage({Key? key}) : super(key: key);

//   @override
//   _StallCheckedPageState createState() => _StallCheckedPageState();
// }

// class _StallCheckedPageState extends State<StallCheckedPage> {
//   int _currentIndex = 0; // Default to Home tab

//   void _onTap(int index) {
//     setState(() {
//       _currentIndex = index;
//     });

//     switch (index) {
//       case 0:
//         Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (context) => HomePage()),
//           (route) => false, // Clear all routes on the stack and push HomePage
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
//         title: Text('Stall Checked'),
//         backgroundColor: Colors.blue[800], // Set the app bar color to blue
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back when arrow back is pressed
//           },
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Stall Checked Page',
//               style: TextStyle(fontSize: 24),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushAndRemoveUntil(
//                   context,
//                   MaterialPageRoute(builder: (context) => HomePage()),
//                   (route) => false, // Navigate to HomePage on button press
//                 );
//               },
//               child: Text('Go to Home'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ProfileViewPage()), // Navigate to ProfilePage on button press
//                 );
//               },
//               child: Text('Go to Profile'),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'home_page.dart'; // Import HomePage for navigation
import 'profile_view.dart'; // Import ProfilePage for navigation
import 'custom_bottom_navigation_bar.dart'; // Import CustomBottomNavigationBar

class StallCheckedPage extends StatefulWidget {
  const StallCheckedPage({Key? key}) : super(key: key);

  @override
  _StallCheckedPageState createState() => _StallCheckedPageState();
}

class _StallCheckedPageState extends State<StallCheckedPage> {
 // int _currentIndex = 0; // Default to Home tab
  // Create a map to store the visited status of each stall
  Map<int, bool> _visitedStalls = {};

  @override
  void initState() {
    super.initState();
    // Initialize the visited status of stalls to false
    for (int i = 1; i <= 12; i++) {
      _visitedStalls[i] = false;
    }
  }

  void _onTap(int index) {
    setState(() {
      //_currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage_Sponser()),
          (route) => false, // Clear all routes on the stack and push HomePage
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

  void _onCheckboxChanged(int stallNumber, bool? value) {
    setState(() {
      _visitedStalls[stallNumber] = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stall Checked',style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF050C9B), // Set the app bar color to blue
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context); // Navigate back when arrow back is pressed
          },
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Text(
            'Stall List',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ...List.generate(12, (index) {
            int stallNumber = index + 1;
            return ListTile(
              title: Text('Stall $stallNumber'),
              trailing: Checkbox(
                value: _visitedStalls[stallNumber],
                onChanged: (bool? value) {
                  _onCheckboxChanged(stallNumber, value);
                },
              ),
            );
          }),
          SizedBox(height: 20),
          
        ],
      ),
      bottomNavigationBar: HomeBottomBar(
       // currentIndex: _currentIndex,
        //onTap: _onTap,
      ),
    );
  }
}
