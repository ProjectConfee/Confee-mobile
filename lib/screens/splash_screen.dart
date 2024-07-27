import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    // Navigate to login screen after 10 seconds
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _image(),
      ),
    );
  }

  Widget _image() {
    return Image.asset(
      'assets/img/logo1.png',
      height: 300,
      fit: BoxFit.contain,
    );
  }
}
