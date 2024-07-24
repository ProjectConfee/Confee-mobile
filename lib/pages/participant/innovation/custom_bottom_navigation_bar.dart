// import 'package:flutter/material.dart';
// //import 'package:youtube_1/pages/participant/innovation/home_page.dart';
// //import 'package:youtube_1/pages/participant/innovation/profile_view.dart';

// class CustomBottomNavigationBar extends StatelessWidget {
//   final int currentIndex;
//   final ValueChanged<int> onTap;

//   const CustomBottomNavigationBar({
//     Key? key,
//     required this.currentIndex,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home,color: Colors.black),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.shopping_bag,color: Colors.black),
//           label: 'Packages',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.account_circle,color: Colors.black),
//           label: 'Profile',
//         ),
//       ],
//       currentIndex: currentIndex,
//       selectedItemColor: Colors.blue[800],
//       onTap: (index) {
//         onTap(index);
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
//import 'package:youtube_1/pages/participant/innovation/home_page.dart';
//import 'package:youtube_1/pages/participant/innovation/profile_view.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: currentIndex == 0 ? Colors.black : Color.fromARGB(255, 1, 1, 1)),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag, color: currentIndex == 1 ? Colors.black : const Color.fromARGB(255, 12, 12, 12)),
          label: 'Packages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle, color: currentIndex == 2 ? Colors.black : Color.fromARGB(255, 5, 5, 5)),
          label: 'Profile',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.black, // Color of the selected item
      unselectedItemColor: Color.fromARGB(255, 12, 12, 12), // Color of the unselected items
      onTap: (index) {
        onTap(index);
      },
    );
  }
}
