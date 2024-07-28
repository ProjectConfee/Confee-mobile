import 'package:flutter/material.dart';

class OC_BottomBar extends StatelessWidget {
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
              //Navigator.pushNamed(context, '/discussion_forum');
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0), // Add right margin
            child: _BottomBarItem(
              icon: Icons.qr_code_scanner_outlined,
              label: "Scan",
              onTap: () {
                Navigator.pushNamed(context, '/oc_qr_scan');
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
