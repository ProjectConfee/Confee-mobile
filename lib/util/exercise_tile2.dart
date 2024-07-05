import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final String imagePath;
  final String companyName;
  // final String description;

  const ExerciseTile({
    Key? key,
    required this.imagePath,
    required this.companyName,
    //required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.all(20), // Adjust padding to control image position
                    color: Color.fromARGB(255, 239, 241, 243),
                    child: Image.asset(
                      imagePath,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50, // Adjust this value to increase space between image and text
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      companyName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    // SizedBox(height: 5),
                  ],
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios), // Changed to an arrow icon
          ],
        ),
      ),
    );
  }
}
