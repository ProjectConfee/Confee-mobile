import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
   // Make icon nullable
  final String? imagePath; // New parameter for image path

  const EmoticonFace({
    Key? key,
    // Make icon optional
    this.imagePath, // New parameter for image path
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 106,
      height: 106,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 227, 226, 226), // Brighter color
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 1, // Blur radius
            offset: Offset(0, 3), // Shadow offset
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imagePath != null) // Check if imagePath is provided
            Image.asset(
              imagePath!,
              width: 70, // Adjust the size as needed
              height: 60,
              fit: BoxFit.cover, // Adjust the size as needed
            )
         
          //SizedBox(height: 5),
        ],
      ),
    );
  }
}
