import 'package:flutter/material.dart';
import 'package:youtube_1/pages/home_page.dart';
import 'package:youtube_1/pages/profile_view.dart';  // Import your home page to enable navigation back

class QRScanPage extends StatelessWidget {
  const QRScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scan'),
        backgroundColor: Colors.blue[800], // Set app bar color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when arrow back is pressed
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.qr_code_scanner,
              size: 120,
              color: Colors.blue[800],
            ),
            SizedBox(height: 20),
            Text(
              'Scan QR Code',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implement QR scanning logic here
                // Example: Navigator.pop(context);
              },
              child: Text('Start Scan'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Packages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileViewPage()),
            );
          }
        },
      ),
    );
  }
}
