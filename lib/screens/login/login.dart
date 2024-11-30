import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // Add http package
import 'dart:convert'; // For converting JSON data
import '../../utils/size_config.dart';

class LoginAndForgotPassword extends StatefulWidget {
  @override
  _LoginAndForgotPasswordState createState() => _LoginAndForgotPasswordState();
}

class _LoginAndForgotPasswordState extends State<LoginAndForgotPassword> {
  bool _showForgotPassword = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Initialize SizeConfig

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(
                SizeConfig.blockSizeHorizontal * 6
            ), // Updated margin
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: SizeConfig.heightMultiplier * 3), // Updated size

                _showForgotPassword ? _forgotPasswordHeader() : _loginHeader(),
                SizedBox(height: SizeConfig.heightMultiplier * 2), // Updated size
                _showForgotPassword
                    ? _image('asset/images/password.png')
                    : _image('asset/images/login.png'),
                SizedBox(height: SizeConfig.heightMultiplier * 2), // Updated size
                _showForgotPassword ? _forgotPasswordInputFields(context) : _loginInputFields(context),
                SizedBox(height: SizeConfig.heightMultiplier * 4), // Updated size
                _showForgotPassword ? _forgotPasswordButton(context) : _loginButton(context),
                if (!_showForgotPassword)
                  _forgotPasswordLink(context), // Show link to switch to forgot password
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Welcome to Confee",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 4, // Updated text size
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: SizeConfig.heightMultiplier * 1), // Updated size
        Text(
          "ICTer Conference",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 2, // Updated text size
          ),
        ),
      ],
    );
  }

  Widget _forgotPasswordHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Forgot password",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 4, // Updated text size
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: SizeConfig.heightMultiplier * 2), // Updated size
        Text(
          "Enter the email address to request a password reset",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 2, // Updated text size
          ),
        ),
      ],
    );
  }

  Widget _image(String path) {
    return Image.asset(
      path,
      height: SizeConfig.imageSizeMultiplier * 75, // Updated image size
    );
  }

  Widget _loginInputFields(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          controller: _emailController,
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
        SizedBox(height: SizeConfig.heightMultiplier * 2), // Updated size
        TextFormField(
          controller: _passwordController,
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
      ],
    );
  }

  Widget _forgotPasswordInputFields(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter your email",
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
              return 'Please enter your email';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _loginButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.blockSizeHorizontal * 20, // Updated padding
      ),
      child: ElevatedButton(
        onPressed: _login,
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 2, // Updated text size
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF3572EF),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 12, // Updated padding
            vertical: SizeConfig.heightMultiplier * 1.5, // Updated padding
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }

  Widget _forgotPasswordButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.blockSizeHorizontal * 20, // Updated padding
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(
              context, '/email_otp'
          );
        },
        child: Text(
          "Next",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 2, // Updated text size
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF3572EF),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 5, // Updated padding
            vertical: SizeConfig.heightMultiplier * 1.5, // Updated padding
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }

  Widget _forgotPasswordLink(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          _showForgotPassword = true;
        });
      },
      child: Text("Forgot password?"),
    );
  }

  // New method for logging in and calling the backend
  Future<void> _login() async {
    if (_formKey.currentState?.validate() ?? false) {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      try {
        // Make the POST request
        final response = await http.post(
          Uri.parse('http://localhost:8080/auth/login'),
          body: json.encode({
            'email': email,
            'password': password,
          }),
          headers: {
            'Content-Type': 'application/json',
          },
        );

        if (response.statusCode == 200) {
          // Navigate to the dashboard or show success message
          Navigator.pushReplacementNamed(context, '/participant_dashboard');
        } else {
          // Handle error response
          _showErrorDialog('Invalid credentials');
        }
      } catch (error) {
        // Handle network error
        _showErrorDialog('An error occurred. Please try again later.');
      }
    }
  }

  // Method to show error dialog
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
