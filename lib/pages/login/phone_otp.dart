import 'package:flutter/material.dart';
import '../../utils/size_config.dart'; // Import your SizeConfig file

class PhoneOtp extends StatelessWidget {
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
                _resend(context),
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
          "Verification",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 4, // Responsive font size
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 1), // Responsive spacing
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              fontSize: SizeConfig.textMultiplier * 2, // Responsive font size
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: "Please enter the 6-digit OTP code sent to your ",
              ),
              TextSpan(
                text: "Phone number",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              TextSpan(
                  text: "."
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _image() {
    return Image.asset(
      'asset/images/otp.png',
      height: SizeConfig.blockSizeVertical * 30, // Responsive image height
    );
  }

  Widget _inputFields(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: "Phone number OTP Code",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  SizeConfig.blockSizeHorizontal * 4.5
              ), // Responsive border radius
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            filled: true,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter the OTP code';
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
                  context, '/reset_password'
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

  Widget _resend(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Didn't receive the verification OTP?",
          style: TextStyle(
              fontSize: SizeConfig.textMultiplier * 2
          ), // Responsive font size
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Resend OTP",
            style: TextStyle(
                fontSize: SizeConfig.textMultiplier * 2
            ), // Responsive font size
          ),
        ),
      ],
    );
  }
}
