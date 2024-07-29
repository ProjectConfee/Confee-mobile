// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// class EmoticonFace extends StatelessWidget {
  
//   final IconData icon;

//   const EmoticonFace({
//     Key? key,
   
//     required this.icon,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 75,
//       height: 75,
      
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 197, 214, 229), 
//         borderRadius: BorderRadius.circular(12),
//       ),
      
//       padding: EdgeInsets.all(16),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             icon,
          
//             color: Color.fromARGB(255, 0, 0, 0),
//             size: 30,
//           ),
//           SizedBox(height: 8),
        
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final IconData? icon; // Make icon nullable
  final String? imagePath; // New parameter for image path

  const EmoticonFace({
    Key? key,
    this.icon, // Make icon optional
    this.imagePath, // New parameter for image path
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:100,
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 244, 245, 246),
        borderRadius: BorderRadius.circular(12),
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
          else if (icon != null) // Fallback to icon if imagePath is not provided
            Icon(
              icon,
              color: Color.fromARGB(255, 0, 0, 0),
              size: 30,
            ),
          //SizedBox(height: 5),
        ],
      ),
    );
  }
}
