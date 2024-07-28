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
        children: const [
          Icon(
            Icons.home,
            color: Colors.black,
            size: 35,
          ),
          Icon(
            Icons.favorite_outlined,
            color: Colors.black,
            size: 35,
          ),
          Icon(
            Icons.notifications,
            color: Colors.black,
            size: 35,
          ),
          Icon(
            Icons.person,
            color: Colors.black,
            size: 35,
          ),
        ],
      ),
    );
  }
}