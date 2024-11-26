import 'package:flutter/material.dart';
import '../../utils/size_config.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Initialize SizeConfig

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 6), // Adjust margin
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: SizeConfig.blockSizeVertical * 3), // Responsive spacing
                _header(),
                SizedBox(height: SizeConfig.blockSizeVertical * 2), // Responsive spacing
                _image(),
                SizedBox(height: SizeConfig.blockSizeVertical * 2), // Responsive spacing
                _inputFields(context),
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
          "Forgot password",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 4, // Responsive font size
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 2), // Responsive spacing
        Text(
          "Enter the email address to request a password reset",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 2, // Responsive font size
          ),
        ),
      ],
    );
  }

  Widget _image() {
    return Image.asset(
      'asset/images/password.png',
      height: SizeConfig.blockSizeVertical * 30, // Responsive image height
    );
  }

  Widget _inputFields(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter your email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  SizeConfig.blockSizeHorizontal * 4.5
              ), // Responsive border radius
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(
                Icons.person,
                size: SizeConfig.imageSizeMultiplier * 6
            ), // Responsive icon size
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }
            return null;
          },
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 6), // Responsive spacing
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 20
          ), // Responsive padding
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, '/email_otp'
              );
            },
            child: Text(
              "Next",
              style: TextStyle(
                fontSize: SizeConfig.textMultiplier * 2.5, // Responsive font size
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF3572EF),
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 5, // Responsive horizontal padding
                vertical: SizeConfig.blockSizeVertical * 2.5, // Responsive vertical padding
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    SizeConfig.blockSizeHorizontal * 4.5
                ), // Responsive border radius
              ),
            ),
          ),
        ),
      ],
    );
  }
}
