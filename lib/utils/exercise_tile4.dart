// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final String imagePath;
 // final String companyName;
  // final String description;

  const ExerciseTile({
    Key? key,
    required this.imagePath,
    //required this.companyName,
    //required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 190, 184, 184),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(30), // Adjust padding to control image position
                    color: Color.fromARGB(255, 239, 241, 243),
                    child: Image.asset(
                      imagePath,
                      height: 250,
                      width: 250,
                    ),
                  ),
                ),
               // SizedBox(
                 // width:, // Adjust this value to increase space between image and text
                //),
               /* Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   /* Text(
                      companyName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),*/
                    // SizedBox(height: 5),
                  ],
                ),*/
              ],
            ),
           // Icon(Icons.arrow_forward_ios), // Changed to an arrow icon
          ],
        ),
      ),
    );
  }
}
