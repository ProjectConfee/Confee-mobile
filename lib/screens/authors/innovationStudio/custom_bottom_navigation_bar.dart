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
//           icon: Icon(Icons.home, color: currentIndex == 0 ? Colors.black : Color.fromARGB(255, 1, 1, 1)),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.shopping_bag, color: currentIndex == 1 ? Colors.black : const Color.fromARGB(255, 12, 12, 12)),
//           label: 'Packages',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.account_circle, color: currentIndex == 2 ? Colors.black : Color.fromARGB(255, 5, 5, 5)),
//           label: 'Profile',
//         ),
//       ],
//       currentIndex: currentIndex,
//       selectedItemColor: Colors.black, // Color of the selected item
//       unselectedItemColor: Color.fromARGB(255, 12, 12, 12), // Color of the unselected items
//       onTap: (index) {
//         onTap(index);
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  // const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9).withOpacity(0.4),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0), // Add left margin
            child: _BottomBarItem(
              icon: Icons.home_outlined,
              label: "Home",
              onTap: () {
                Navigator.pushReplacementNamed(context, '/participant_dashboard');
              },
            ),
          ),
          _BottomBarItem(
            icon: Icons.library_books_outlined,
            label: "Forum",
            onTap: () {
              Navigator.pushNamed(context, '/discussion_forum');
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0), // Add right margin
            child: _BottomBarItem(
              icon: Icons.qr_code,
              label: "QR",
              onTap: () {
                Navigator.pushNamed(context, '/qr');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _BottomBarItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 35,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
