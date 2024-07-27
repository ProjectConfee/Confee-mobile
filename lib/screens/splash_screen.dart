// start_page.dart

import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height, // Ensure the container takes full height
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF3572EF), Color(0xFF050C9B)], // Blue gradient colors
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 10),
                  _header(),
                  SizedBox(height: 40), // Adjust the spacing as needed
                  _image(), // Add the image widget here
                  SizedBox(height: 70), // Adjust the spacing as needed
                  _inputFields(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'asset/images/logo-box.jpg', // Make sure to add your image to the assets folder and update the path
          height: 100, // Adjust the height as needed
        ),
        SizedBox(height: 3),
        Text(
          "Confee",
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 1),
        Text(
          "ICTer Conference",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _image() {
    return Image.asset(
      'asset/images/start.png', // Make sure to add your image to the assets folder and update the path
      height: 300, // Adjust the height as needed
    );
  }

  Widget _inputFields(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login'); // Navigate to login screen
            },
            child: Text(
              "Get Start",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ), // Text color is white
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF3572EF), // Background color
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Adjust padding as needed
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              elevation: 5,
              shadowColor: Colors.black.withOpacity(0.2),
            ),
          ),
        )
      ],
    );
  }
}
