import 'package:flutter/material.dart';
import 'package:youtube_1/util/exercise_tile3.dart';
import 'package:youtube_1/pages/resourcecategory.dart';  // Import the ResourceCategoryPage

class ResourcePage extends StatelessWidget {
  const ResourcePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resources'),
        backgroundColor: Colors.blue[800],  // Set the app bar color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when arrow back is pressed
          },
          
        ),

      ),

      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Packages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);  // Assuming the HomePage is the previous page in the navigation stack
          }
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // Greeting row (if needed)
                                SizedBox(height:33),
                  // Search bar (if needed)
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Column(
                  children: [
                    // Exercise heading (if needed)
                    // List of exercises
                    Expanded(
                      child: ListView(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ResourceCategoryPage()),
                              );
                            },
                            child: ExerciseTile(
                              imagePath: 'asset/images/silver_badge.png',
                              companyName: 'COMPANY 01',
                              description: 'Leading company of SL',
                            ),
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/gold_badge.png',
                            companyName: 'COMPANY 02',
                            description: 'Now we are open for You',
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/platinum_badge.png',
                            companyName: 'COMPANY 03',
                            description: 'World famous company',
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/silver_badge.png',
                            companyName: 'COMPANY 04',
                            description: 'For YOU',
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/gold_badge.png',
                            companyName: 'COMPANY 05',
                            description: 'Happy coding',
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/silver_badge.png',
                            companyName: 'COMPANY 06',
                            description: 'WSO2 WSO2',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
