import 'package:confee/screens/notifications/notification.dart';
import 'package:flutter/material.dart';
// import 'package:youtube_1/pages/participant/innovation/home_page.dart';
// import 'package:youtube_1/pages/participant/innovation/profile_view.dart';

import 'screens/authors/dashboard.dart';
import 'screens/authors/edit_profile.dart';
import 'screens/authors/innovationStudio/home_page.dart';
import 'screens/authors/qrcode.dart';
import 'screens/notifications/empty_notification.dart';
import 'screens/shared/profile.dart';
import 'screens/login/forgot_password.dart';
import 'screens/login/email_otp.dart';
import 'screens/login/password_changed.dart';
import 'screens/login/phone_otp.dart';
import 'screens/login/login.dart';
import 'screens/login/reset_password.dart';
import 'screens/shared/discussion.dart';
import 'screens/shared/feedback.dart';
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
      initialRoute: '/',
      routes: {

        '/': (context) => StartPage(),

        // ## Login ##

        '/login': (context) => LoginPage(),
        // '/forgot_password': (context) => ForgotPassword(),
        '/email_otp': (context) => EmailOtp(),
        '/phone_otp': (context) => PhoneOtp(),
        '/reset_password': (context) => ResetPassword(),
        '/password_changed': (context) => PasswordChanged(),

        // ## Shared ##

        '/discussion_forum': (context) => Discussion(),
        '/profile': (context) => ProfileScreen(),
        '/editProfile': (context) => EditProfileScreen(),
        '/notification': (context) => NotificationPage(),
        '/empty_notification': (context) => EmptyNotification(),


        // ### OC ###

        '/home_oc': (context) => Feedbacks(),

        // ### Authors ###

         '/participant_dashboard': (context) => ParticipantDashboard(),
        '/paticipant_innovation_view': (context)=>HomePage_Sponser(),
        '/qr': (context) => QRCodePage(),

        // ### Speakers ###

         '/home_speakers': (context) => HomePage_Sponser(),

        // ## WorkShop Paricipants

        '/home_workshop': (context) => HomePage_Sponser(),

      },
    );
  }
}
