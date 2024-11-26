import 'package:flutter/material.dart';
import '../../utils/size_config.dart';  // Import your SizeConfig file

class PasswordChanged extends StatelessWidget {
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
                SizedBox(height: SizeConfig.blockSizeVertical * 5), // Responsive spacing
                _image(),
                SizedBox(height: SizeConfig.blockSizeVertical * 2), // Responsive spacing
                _header(),
                SizedBox(height: SizeConfig.blockSizeVertical * 6), // Responsive spacing
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
          "Password Updated",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 4, // Responsive font size
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 1), // Responsive spacing
        Text(
          "Your password has been updated.",
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
      'asset/images/verify.png',
      height: SizeConfig.blockSizeVertical * 30, // Responsive image height
    );
  }

  Widget _inputFields(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 20
          ), // Responsive padding
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, '/login'
              );
            },
            child: Text(
              "Login",
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
