import 'package:flutter/material.dart';
import '../../utils/size_config.dart'; // Import your SizeConfig file

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Initialize SizeConfig

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 6), // Responsive margin
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: SizeConfig.blockSizeVertical * 3), // Responsive spacing
                _header(),
                SizedBox(height: SizeConfig.blockSizeVertical * 2), // Responsive spacing
                _image(),
                SizedBox(height: SizeConfig.blockSizeVertical * 2), // Responsive spacing
                _inputFields(context),
                SizedBox(height: SizeConfig.blockSizeVertical * 1), // Responsive spacing
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
          "Reset Password",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 4, // Responsive font size
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 1), // Responsive spacing
        Text(
          "Your new password must be different from previous used password.",
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
      'asset/images/confirm.png',
      height: SizeConfig.blockSizeVertical * 30, // Responsive image height
    );
  }

  Widget _inputFields(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: "New password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  SizeConfig.blockSizeHorizontal * 4.5
              ), // Responsive border radius
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(
                Icons.lock
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 2), // Responsive spacing
        TextFormField(
          decoration: InputDecoration(
            hintText: "Confirm password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  SizeConfig.blockSizeHorizontal * 4.5
              ), // Responsive border radius
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(
                Icons.lock
            ),
          ),
          obscureText: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 5), // Responsive spacing
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 20
          ), // Responsive padding
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, '/password_changed'
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
              backgroundColor: Color(0xFF3572EF), // Background color
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 5, // Responsive padding
                vertical: SizeConfig.blockSizeVertical * 2.5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    SizeConfig.blockSizeHorizontal * 4.5
                ), // Responsive border radius
              ),
            ),
          ),
        )
      ],
    );
  }
}
