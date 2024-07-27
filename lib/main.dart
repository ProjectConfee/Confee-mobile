import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart';
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart';

import 'screens/authors/innovationStudio/home_page.dart';
import 'screens/authors/profile.dart';
import 'screens/login/forgot_password.dart';
import 'screens/login/email_otp.dart';
import 'screens/login/password_changed.dart';
import 'screens/login/phone_otp.dart';
import 'screens/login/login.dart';
import 'screens/login/reset_password.dart';
import 'screens/splash_screen.dart';
// import 'screens/sponsers/home_page.dart'; // Import ProfileViewPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Define initial route if needed
      routes: {
        '/': (context) => StartPage(), // SplashScreen as the initial screen
        '/login': (context) => LoginPage(),
        // '/forgot_password': (context) => ForgotPassword(),
        '/email_otp': (context) => EmailOtp(),
        '/phone_otp': (context) => PhoneOtp(),
        '/reset_password': (context) => ResetPassword(),
        '/password_changed': (context) => PasswordChanged(),

        // ### Sponsers ###

        '/home_sponsers': (context) => HomePage_Sponser(),

        // ### Authors ###

         '/home_authors': (context) => HomePage_Sponser(),

        // ### Speakers ###

         '/home_speakers': (context) => HomePage_Sponser(),

        // ## WorkShop Paricipants

        '/home_workshop': (context) => HomePage_Sponser(),

      },
    );
  }
}
