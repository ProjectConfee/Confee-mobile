import 'package:flutter/material.dart';
import 'bottom_bar.dart';

class Discussion extends StatelessWidget {
  const Discussion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(''), // Replace with your background image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 130,
              color: Color(0xFF050C9B),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10.0, top: 20.0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Discussion',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Padding(
                        padding: EdgeInsets.only(left: 34.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Discuss with the Community',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/img/profile.webp'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 130,
            child: Scrollbar(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: List.generate(5, (index) {
                    return Card(
                      color: Color(0xFFDADADA), // Grey color box
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    CircleAvatar(
                                      backgroundImage: AssetImage('assets/img/profile.webp'), // Replace with the profile image path
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Viranga', // Replace with the username
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Text(
                                    'This is the content of the question which I have This is the content of the question which I ',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 128.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.reply),
                                      SizedBox(width: 5), // Add a small gap between the icon and text
                                      Text(
                                        '10 replies', // Replace with actual number of replies
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '2 hours ago', // Replace with actual time
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Color(0xFFADDBED),
        child: Icon(
          Icons.add,
          size: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
