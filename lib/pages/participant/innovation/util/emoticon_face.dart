// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  
  final IconData icon;

  const EmoticonFace({
    Key? key,
   
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 197, 214, 229), 
        borderRadius: BorderRadius.circular(12),
      ),
      
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Color.fromARGB(255, 94, 93, 93),
            size: 30,
          ),
          SizedBox(height: 8),
        
        ],
      ),
    );
  }
}
