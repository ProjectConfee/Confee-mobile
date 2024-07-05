// main.dart

import 'package:flutter/material.dart';
import 'package:youtube_1/pages/home_page.dart';
import 'package:youtube_1/pages/profile_view.dart'; // Import ProfileViewPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Define initial route if needed
      routes: {
        '/': (context) => HomePage(), // Define home route
        '/profile': (context) => ProfileViewPage(), // Define profile route
        // Add more routes as needed
      },
    );
  }
}
