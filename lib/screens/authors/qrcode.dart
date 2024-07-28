import 'package:confee/screens/shared/bottom_bar.dart';
import 'package:flutter/material.dart';
// import 'home_bottom_bar.dart';

class QRCodePage extends StatefulWidget {
  @override
  _QRCodePageState createState() => _QRCodePageState();
}

class _QRCodePageState extends State<QRCodePage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> qrCodes = [
    {'path': 'asset/images/qr.png', 'name': 'Pre Conference'},
    {'path': 'asset/images/qr.png', 'name': 'Post Conference'},
    {'path': 'asset/images/qr.png', 'name': 'Conference Day1'},
    {'path': 'asset/images/qr.png', 'name': 'Conference Day2'},
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _previousPage() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _nextPage() {
    if (_currentIndex < qrCodes.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _viewFullScreen(String path) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FullScreenQRCodePage(imagePath: path),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                          'QR Codes',
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
                        icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 30
                        ),
                        onPressed: () {
                          // Navigate to notifications
                          Navigator.pushReplacementNamed(context, '/notification');
                          // Navigator.pushReplacementNamed(context, '/empty_notification');
                        },
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the profile page
                          Navigator.pushReplacementNamed(context, '/profile');
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/img/profile.png'), // Replace with your profile image path
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                        Icons.arrow_left,
                        size: 40
                    ),
                    onPressed: _previousPage,
                  ),
                  Container(
                    height: 400,
                    width: 280, // Adjust width to reduce space
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: qrCodes.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => _viewFullScreen(qrCodes[index]['path']!),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                elevation: 4.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    qrCodes[index]['path']!,
                                    height: 250,
                                    width: 250,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(height: 24.0), // Adjust height to reduce space
                              Text(
                                qrCodes[index]['name']!,
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                        Icons.arrow_right,
                        size: 40
                    ),
                    onPressed: _nextPage,
                  ),
                ],
              ),
            ),
          ),
          HomeBottomBar(),
        ],
      ),
    );
  }
}

class FullScreenQRCodePage extends StatelessWidget {
  final String imagePath;

  FullScreenQRCodePage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Full Screen QR Code'),
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

