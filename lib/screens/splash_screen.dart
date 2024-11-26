import 'package:flutter/material.dart';
import '../utils/size_config.dart';

class StartPage extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    // Navigate to the login screen after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
          context, '/login'
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Initialize SizeConfig with the current context

    return Scaffold(
      body: Center(
        child: _image(),
      ),
    );
  }

  Widget _image() {
    return Image.asset(
      'asset/images/logo1.png',
      height: SizeConfig.blockSizeVertical * 30, // Adjust height using SizeConfig
      fit: BoxFit.contain,
    );
  }
}
