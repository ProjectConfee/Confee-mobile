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
  final _forgotEmailController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Form key for validation

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Initialize SizeConfig

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: SizeConfig.heightMultiplier * 3),
                _showForgotPassword ? _forgotPasswordHeader() : _loginHeader(),
                SizedBox(height: SizeConfig.heightMultiplier * 2),
                _showForgotPassword
                    ? _image('asset/images/password.png')
                    : _image('asset/images/login.png'),
                SizedBox(height: SizeConfig.heightMultiplier * 2),
                _showForgotPassword
                    ? _forgotPasswordInputFields()
                    : _loginInputFields(),
                SizedBox(height: SizeConfig.heightMultiplier * 4),
                _showForgotPassword
                    ? _forgotPasswordButton()
                    : _loginButton(),
                if (!_showForgotPassword) _forgotPasswordLink(),
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
            fontSize: SizeConfig.textMultiplier * 4,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: SizeConfig.heightMultiplier * 1),
        Text(
          "ICTer Conference",
          style: TextStyle(fontSize: SizeConfig.textMultiplier * 2),
        ),
      ],
    );
  }

  Widget _forgotPasswordHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Forgot Password",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 4,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: SizeConfig.heightMultiplier * 1),
        Text(
          "Enter your email address to request a password reset",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: SizeConfig.textMultiplier * 2),
        ),
      ],
    );
  }

  Widget _image(String path) {
    return Image.asset(
      path,
      height: SizeConfig.imageSizeMultiplier * 75,
    );
  }

  Widget _loginInputFields() {
    return Form(
      key: _formKey,
      child: Column(
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
              fillColor: Colors.grey[200],
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
          SizedBox(height: SizeConfig.heightMultiplier * 2),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.grey[200],
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
      ),
    );
  }

  Widget _forgotPasswordInputFields() {
    return TextFormField(
      controller: _forgotEmailController,
      decoration: InputDecoration(
        hintText: "Enter your email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
        fillColor: Colors.grey[200],
        filled: true,
        prefixIcon: Icon(Icons.email),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        return null;
      },
    );
  }

  Widget _loginButton() {
    return ElevatedButton(
      onPressed: _login,
      child: Text(
        "Login",
        style: TextStyle(
          fontSize: SizeConfig.textMultiplier * 2,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF3572EF),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockSizeHorizontal * 12,
          vertical: SizeConfig.heightMultiplier * 1.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }

  Widget _forgotPasswordButton() {
    return ElevatedButton(
      onPressed: _requestPasswordReset,
      child: Text(
        "Next",
        style: TextStyle(
          fontSize: SizeConfig.textMultiplier * 2,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF3572EF),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockSizeHorizontal * 5,
          vertical: SizeConfig.heightMultiplier * 1.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }

  Widget _forgotPasswordLink() {
    return TextButton(
      onPressed: () {
        setState(() {
          _showForgotPassword = true;
        });
      },
      child: Text("Forgot password?"),
    );
  }

  Future<void> _login() async {
    if (_formKey.currentState?.validate() ?? false) {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      try {
        final response = await http.post(
          Uri.parse('http://192.168.56.1:8080/auth/login'),
          body: json.encode({'email': email, 'password': password}),
          headers: {'Content-Type': 'application/json'},
        );
        final Map<String, dynamic> responseBody = json.decode(response.body);
        if (response.statusCode == 200 && responseBody['statusCode'] == 200) {
          Navigator.pushReplacementNamed(context, '/participant_dashboard');
        } else {
          _showErrorDialog('Login failed. check credentials.');
        }
      } catch (error) {
        _showErrorDialog('Network error. Please try again.');
      }
    }
  }

  Future<void> _requestPasswordReset() async {
    final email = _forgotEmailController.text.trim();
    if (email.isEmpty) {
      _showErrorDialog('Please enter your email.');
      return;
    }

    try {
      final response = await http.post(
        Uri.parse('http://192.168.56.1:8080/auth/request-reset'),
        body: json.encode({'email': email}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        Navigator.pushReplacementNamed(context, '/email_otp');
      } else {
        _showErrorDialog('Failed to send reset email.');
      }
    } catch (error) {
      _showErrorDialog('Network error. Please try again.');
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
