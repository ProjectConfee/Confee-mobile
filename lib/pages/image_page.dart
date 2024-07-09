// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtube_1/pages/home_page.dart'; // Import the HomePage
import 'package:youtube_1/pages/participant/innovation/util/util/exercise_tile4.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Packages'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
              (Route<dynamic> route) => false,
            );
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
                  // Greeting row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                      // Notification
                      /*Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),*/
                    ],
                  ),
                  SizedBox(height: 0),
                  // Search bar
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        
                        
                      ],
                    ),
                  ),
                  SizedBox(height: 11),
                  // How do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [],
                  ),
                  // Four different faces
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Column(
                  children: [
                    // Exercise heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                    SizedBox(height: 20),
                    // List of exercises
                    Expanded(
                      child: ListView(
                        children: [
                          ExerciseTile(
                            imagePath: 'asset/images/download.png',
                            //companyName: 'Documents',
                            //description: 'Leading company of SL',
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/v.png',
                           // companyName: 'Videos',
                            //description: 'Now we are open for You',
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/vv.png',
                            //companyName: 'Images',
                            //description: 'World famous company',
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/R.png',
                            //companyName: 'Links',
                            //description: 'For YOU',
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/download.png',
                            //companyName: 'Others',
                            //description: 'Happy coding',
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
