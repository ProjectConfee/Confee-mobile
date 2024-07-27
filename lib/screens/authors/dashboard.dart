import 'package:flutter/material.dart';

class ParticipantDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              color: Color(0xFF050C9B),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                  left: 10.0,
                  top: 20.0,
                  right: 10.0
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 14.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Hello Olivia',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Padding(
                        padding: EdgeInsets.only(left: 14.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Welcome to Confee',
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
                    top: 0,
                    right: 0,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.notifications, color: Colors.white, size: 30),
                          onPressed: () {
                            // Navigate to notifications
                          },
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('asset/images/profile.png'), // Replace with your profile image path
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                padding: const EdgeInsets.all(16.0),
                children: <Widget>[
                  DashboardCard(
                    imagePath: 'asset/images/pre_conference.png',
                    title: 'Pre Conference',
                    onTap: () {
                      // Navigate to profile page
                    },
                  ),
                  DashboardCard(
                    imagePath: 'asset/images/post_conference.png',
                    title: 'Post Conference',
                    onTap: () {
                      // Navigate to notifications page
                    },
                  ),
                  DashboardCard(
                    imagePath: 'asset/images/day1.png',
                    title: 'Conference Day1',
                    onTap: () {
                      // Navigate to analytics page
                    },
                  ),
                  DashboardCard(
                    imagePath: 'asset/images/day2.png',
                    title: 'Conference Day2',
                    onTap: () {
                      // Navigate to settings page
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 180, // Adjust height as needed
                    child: ListView.builder(
                      padding: EdgeInsets.all(10.0),
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: EdgeInsets.symmetric(vertical: 5.0), // Reduce the vertical margin
                          child: ListTile(
                            leading: Image.asset(
                              'asset/images/stall1.png', // Replace with your image path
                              width: 150.0,
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                            title: Center(
                              child: Text(
                                'Innovation Studio',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28.0,
                                ),
                              ),
                            ),
                            subtitle: Text(
                              'View details',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                            ),
                            // trailing: Icon(Icons.arrow_forward, color: Color(0xFF3572EF), size: 30.0,),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.dashboard),
      //       label: 'Dashboard',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String imagePath; // Changed from icon to imagePath
  final String title;
  final VoidCallback onTap;

  const DashboardCard({
    Key? key,
    required this.imagePath, // Changed from icon to imagePath
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                imagePath, // Use the imagePath for displaying the image
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
