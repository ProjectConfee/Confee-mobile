import 'package:flutter/material.dart';
import 'package:youtube_1/pages/participant/innovation/home_page.dart';
import 'package:youtube_1/pages/participant/innovation/image_page.dart';
import 'package:youtube_1/pages/participant/innovation/util/exercise_tile2.dart';
import 'package:youtube_1/pages/participant/innovation/document_view.dart'; // Import DocumentViewPage

class ResourceCategoryPage extends StatelessWidget {
  const ResourceCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resource Category'),
        backgroundColor: Colors.blue[800],
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
                  SizedBox(height: 33),
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
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Column(
                  children: [
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DocumentViewPage(), // Navigate to DocumentViewPage
                                ),
                              );
                            },
                            child: ExerciseTile(
                              imagePath: 'asset/images/article-line.png',
                              companyName: 'Documents',
                            ),
                          ),
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
                              imagePath: 'asset/images/file-video-fill.png',
                              companyName: 'Videos',
                            ),
                          ),
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
                              imagePath: 'asset/images/links-line.png',
                              companyName: 'Links',
                            ),
                          ),
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
                              imagePath: 'asset/images/color-filter-fill.png',
                              companyName: 'Others',
                            ),
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
