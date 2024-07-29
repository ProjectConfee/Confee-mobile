// import 'package:flutter/material.dart';

// class OthersPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Others'),
//         backgroundColor: Colors.blue[800],
//       ),
//       backgroundColor: const Color.fromARGB(255, 250, 253, 255),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildSocialTile(
//                 icon: Icons.facebook,
//                 title: 'Facebook',
//                 url: 'https://www.facebook.com/yourprofile', // Replace with your URL
//               ),
//               _buildSocialTile(
//                 icon: Icons.camera_alt,
//                 title: 'Instagram',
//                 url: 'https://www.instagram.com/yourprofile', // Replace with your URL
//               ),
//               _buildSocialTile(
//                 icon: Icons.link,
//                 title: 'LinkedIn',
//                 url: 'https://www.linkedin.com/in/yourprofile', // Replace with your URL
//               ),
//               _buildSocialTile(
//                 icon: Icons.video_call,
//                 title: 'TikTok',
//                 url: 'https://www.tiktok.com/@yourprofile', // Replace with your URL
//               ),
//               _buildSocialTile(
//                 icon: Icons.video_library,
//                 title: 'YouTube',
//                 url: 'https://www.youtube.com/channel/yourchannel', // Replace with your URL
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSocialTile({
//     required IconData icon,
//     required String title,
//     required String url,
//   }) {
//     return GestureDetector(
//       onTap: () {
//         // Open the URL
//         _launchURL(url);
//       },
//       child: Card(
//         margin: EdgeInsets.symmetric(vertical: 8.0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         child: ListTile(
//           leading: Icon(icon, size: 40.0, color: Colors.blue),
//           title: Text(title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
//           trailing: Icon(Icons.arrow_forward_ios),
//         ),
//       ),
//     );
//   }

//   void _launchURL(String url) {
//     // Use url_launcher package to open URLs
//     // Add url_launcher to your pubspec.yaml and import it here
//     // import 'package:url_launcher/url_launcher.dart';

//     // Launch URL
//     // launch(url);
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

// class OthersPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Others'),
//         backgroundColor: Colors.blue[800],
//       ),
//       backgroundColor: const Color.fromARGB(255, 250, 253, 255),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildSocialTile(
//                 icon: Icons.facebook,
//                 title: 'Facebook',
//                 url: 'https://facebook.com/OfficialWSO2',
//               ),
//               _buildSocialTile(
//                 icon: Icons.camera_alt,
//                 title: 'Instagram',
//                 url: 'https://www.instagram.com/officialwso2?igsh=MWFrZnptMjVheDAzcQ==',
//               ),
//               _buildSocialTile(
//                 icon: Icons.link,
//                 title: 'LinkedIn',
//                 url: 'https://linkedin.com/company/wso2',
//               ),
//               _buildSocialTile(
//                 icon: Icons.video_call,
//                 title: 'YouTube',
//                 url: 'https://www.youtube.com/@WSO2official',
//               ),
//               _buildSocialTile(
//                 icon: Icons.library_books,
//                 title: 'Library',
//                 url: 'https://wso2.com/library',
//               ),
//               _buildSocialTile(
//                 icon: Icons.link,
//                 title: 'WSO2 Official Website',
//                 url: 'https://wso2.com',
//               ),
//               _buildSocialTile(
//                 icon: Icons.link,
//                 title: 'Twitter',
//                 url: 'https://twitter.com/wso2',
//               ),
//               _buildSocialTile(
//                 icon: Icons.library_books,
//                 title: 'Library',
//                 url: 'https://wso2.com/library',
//               ),
//               _buildSocialTile(
//                 icon: Icons.link,
//                 title: 'WSO2 Official Website',
//                 url: 'https://wso2.com',
//               ),
//               _buildSocialTile(
//                 icon: Icons.link,
//                 title: 'Twitter',
//                 url: 'https://twitter.com/wso2',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSocialTile({
//     required IconData icon,
//     required String title,
//     required String url,
//   }) {
//     return GestureDetector(
//       onTap: () {
//         _launchURL(url);
//       },
//       child: Card(
//         margin: EdgeInsets.symmetric(vertical: 15.0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         child: ListTile(
//           leading: Icon(icon, size: 40.0, color: Colors.blue),
//           title: Text(title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
//           //trailing: Icon(Icons.arrow_forward_ios),
//         ),
//       ),
//     );
//   }

//   void _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

class OthersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Others'),
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: const Color.fromARGB(255, 250, 253, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              _buildSocialTile(
                icon: Icons.facebook,
                title: 'Facebook',
                url: 'https://facebook.com/OfficialWSO2',
              ),
              _buildSocialTile(
                icon: Icons.camera_alt,
                title: 'Instagram',
                url: 'https://www.instagram.com/officialwso2?igsh=MWFrZnptMjVheDAzcQ==',
              ),
              _buildSocialTile(
                icon: Icons.link,
                title: 'LinkedIn',
                url: 'https://linkedin.com/company/wso2',
              ),
              _buildSocialTile(
                icon: Icons.video_call,
                title: 'YouTube',
                url: 'https://www.youtube.com/@WSO2official',
              ),
              _buildSocialTile(
                icon: Icons.library_books,
                title: 'Library',
                url: 'https://wso2.com/library',
              ),
              _buildSocialTile(
                icon: Icons.link,
                title: 'WSO2 Official Website',
                url: 'https://wso2.com',
              ),
              _buildSocialTile(
                icon: Icons.link,
                title: 'Twitter',
                url: 'https://twitter.com/wso2',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialTile({
    required IconData icon,
    required String title,
    required String url,
  }) {
    return GestureDetector(
      onTap: () {
        _launchURL(url);
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 12.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 6.0,
        child: ListTile(
          contentPadding: EdgeInsets.all(16.0),
          leading: Icon(icon, size: 50.0, color: Colors.blue),
          title: Text(title, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          //trailing: Icon(Icons.arrow_forward_ios, size: 24.0),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
