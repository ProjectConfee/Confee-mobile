// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart'; // Import your home page file
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart'; // Import ProfileViewPage

// class StallMapPage extends StatelessWidget {
//   const StallMapPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Stall Map'),
//         backgroundColor: Colors.blue[800], // Set the app bar color
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back when arrow back is pressed
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 20),
//             Text(
//               'Floor 1',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             _buildFloorPlan(1),
//             SizedBox(height: 40),
//             Text(
//               'Floor 2',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             _buildFloorPlan(2),
//             SizedBox(height: 40),
//             Text(
//               'Shop Names',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             _buildShopNames(),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Packages'),
//           BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
//         ],
//         onTap: (index) {
//           switch (index) {
//             case 0:
//               // Navigate to the HomePage when the home icon is tapped
//               Navigator.pushAndRemoveUntil(
//                 context,
//                 MaterialPageRoute(builder: (context) => HomePage()),
//                 (Route<dynamic> route) => false,
//               );
//               break;
//             case 2:
//               // Navigate to the ProfileViewPage when the profile icon is tapped
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => ProfileViewPage()),
//               );
//               break;
//           }
//         },
//       ),
//     );
//   }

//   Widget _buildFloorPlan(int floor) {
//     List<Widget> rows = [];
//     int shopNumber = (floor - 1) * 13 + 1;
//     for (int i = 0; i < 4; i++) {
//       List<Widget> rowShops = [];
//       for (int j = 0; j < 3; j++) {
//         if (shopNumber <= floor * 13) {
//           rowShops.add(_buildShopBox(shopNumber++));
//         } else {
//           rowShops.add(Expanded(child: Container()));
//         }
//       }
//       rows.add(Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: rowShops,
//       ));
//       rows.add(SizedBox(height: 10));
//     }
//     return Column(children: rows);
//   }

//   Widget _buildShopBox(int number) {
//     return Expanded(
//       child: Container(
//         height: 60,
//         margin: EdgeInsets.symmetric(horizontal: 5),
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.blue, width: 2),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Center(
//           child: Text(
//             'Shop $number',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildShopNames() {
//     List<Widget> shopNames = [];
//     for (int i = 1; i <= 25; i++) {
//       shopNames.add(Text('Shop $i: Name of Shop $i'));
//     }
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: shopNames,
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../screens/sponsers/home_page.dart'; // Import your home page file
import '../../../screens/sponsers/profile_view.dart'; // Import ProfileViewPage
import 'custom_bottom_navigation_bar.dart'; // Import the CustomBottomNavigationBar

class StallMapPage extends StatefulWidget {
  const StallMapPage({Key? key}) : super(key: key);

  @override
  _StallMapPageState createState() => _StallMapPageState();
}

class _StallMapPageState extends State<StallMapPage> {
  int _currentIndex = 1; // Default to Packages tab

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (Route<dynamic> route) => false,
        );
        break;
      case 1:
        // Stay on the current page
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
        title: Text('Stall Map'),
        backgroundColor: Colors.blue[800], // Set the app bar color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when arrow back is pressed
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Floor 1',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildFloorPlan(1),
            SizedBox(height: 40),
            Text(
              'Floor 2',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildFloorPlan(2),
            SizedBox(height: 40),
            Text(
              'Shop Names',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildShopNames(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }

  Widget _buildFloorPlan(int floor) {
    List<Widget> rows = [];
    int shopNumber = (floor - 1) * 13 + 1;
    for (int i = 0; i < 4; i++) {
      List<Widget> rowShops = [];
      for (int j = 0; j < 3; j++) {
        if (shopNumber <= floor * 13) {
          rowShops.add(_buildShopBox(shopNumber++));
        } else {
          rowShops.add(Expanded(child: Container()));
        }
      }
      rows.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: rowShops,
      ));
      rows.add(SizedBox(height: 10));
    }
    return Column(children: rows);
  }

  Widget _buildShopBox(int number) {
    return Expanded(
      child: Container(
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            'Shop $number',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _buildShopNames() {
    List<Widget> shopNames = [];
    for (int i = 1; i <= 25; i++) {
      shopNames.add(Text('Shop $i: Name of Shop $i'));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: shopNames,
    );
  }
}
