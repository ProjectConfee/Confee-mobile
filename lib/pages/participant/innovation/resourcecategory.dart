// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtube_1/pages/participant/innovation/home_page.dart'; // Import the HomePage
import 'package:youtube_1/pages/participant/innovation/image_page.dart';
import 'package:youtube_1/pages/participant/innovation/util/exercise_tile2.dart';

class ResourceCategoryPage extends StatelessWidget {
  const ResourceCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resource Category'),
        backgroundColor: Colors.blue[800], // Set the app bar color
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
            // Navigate to the HomePage when the home icon is tapped
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
                  // Greeting row (if needed)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                    ],
                  ),
                  SizedBox(height:0),
                  // Search bar
                  Container(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      children: [
                       
                        SizedBox(width: 49),
                        Text(
                          'COMPANY 01',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: ListView(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ImagePage(),
                                ),
                              );
                            },
                            child: ExerciseTile(
                              imagePath: 'asset/images/file-image-fill.png',
                              companyName: 'Images',
                            ),
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/article-line.png',
                            companyName: 'Documents',
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/file-video-fill.png',
                            companyName: 'Videos',
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/links-line.png',
                            companyName: 'Links',
                          ),
                          ExerciseTile(
                            imagePath: 'asset/images/color-filter-fill.png',
                            companyName: 'Others',
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
