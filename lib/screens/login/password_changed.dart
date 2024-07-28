import 'package:flutter/material.dart';

class PasswordChanged extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView( // Wrap the content with SingleChildScrollView
          child: Container(
            margin: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 50),
                _image(),
                SizedBox(height: 20), // Adjust the spacing as needed
                _header(),
                SizedBox(height: 60), // Adjust the spacing as needed
                _inputFields(context),
                SizedBox(height: 10),
              ],
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
        Text(
          "Password Updated",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Your password has been updated.",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20
          ),
        ),
      ],
    );
  }

  Widget _image() {
    return Image.asset(
      'asset/images/verify.png',
      // Make sure to add your image to the assets folder and update the path
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
              Navigator.pushReplacementNamed(context, '/login');

            },
            child: Text(
              "Login",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ), // Text color is white
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF3572EF),
              // Background color
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              // Adjust padding as needed
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
        )
      ],
    );
  }
}
