import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(  // Wrap the content with SingleChildScrollView
          child: Container(
            margin: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 30),
                _header(),
                SizedBox(height: 20), // Adjust the spacing as needed
                _image(), // Add the image widget here
                SizedBox(height: 20), // Adjust the spacing as needed
                _inputFields(context),
                SizedBox(height: 10),
                _forgotPassword(context),
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
          "Welcome to Confee",
          style: TextStyle(fontSize: 40,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Text(
          "ICTer Conference",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  Widget _image() {
    return Image.asset(
      'asset/images/login.png', // Make sure to add your image to the assets folder and update the path
      height: 300, // Adjust the height as needed
    );
  }

  Widget _inputFields(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.person),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your username';
            }
            return null;
          },
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.lock),
          ),
          obscureText: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
        ),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Login",
              style: TextStyle(fontSize: 20,
                  color: Colors.white
              ), // Text color is white
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF3572EF), // Background color
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Adjust padding as needed
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text("Forgot password?"));
  }
}
