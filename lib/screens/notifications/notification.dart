import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
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
              padding: EdgeInsets.only(
                  left: 10.0,
                  top: 20.0
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigate to the dashboard
                              Navigator.pushReplacementNamed(context, '/participant_dashboard');
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Notifications',
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
                            'Stay Updated',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 470, // Adjust height to accommodate notifications
              child: ListView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: 5, // Replace with your actual number of notifications
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.notification_important,
                        color: Color(0xFF3572EF),
                      ),
                      title: Text(
                          'Notification Title $index'
                      ),
                      subtitle: Text(
                          'This is the detail of notification $index'
                      ),
                      trailing: Text(
                          'Now',
                          style: TextStyle(
                              color: Colors.grey
                          )
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: HomeBottomBar(),
    );
  }
}

