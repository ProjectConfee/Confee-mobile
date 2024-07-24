import 'package:flutter/material.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSocialTile(
                icon: Icons.facebook,
                title: 'Facebook',
                url: 'https://www.facebook.com/yourprofile', // Replace with your URL
              ),
              _buildSocialTile(
                icon: Icons.camera_alt,
                title: 'Instagram',
                url: 'https://www.instagram.com/yourprofile', // Replace with your URL
              ),
              _buildSocialTile(
                icon: Icons.link,
                title: 'LinkedIn',
                url: 'https://www.linkedin.com/in/yourprofile', // Replace with your URL
              ),
              _buildSocialTile(
                icon: Icons.video_call,
                title: 'TikTok',
                url: 'https://www.tiktok.com/@yourprofile', // Replace with your URL
              ),
              _buildSocialTile(
                icon: Icons.video_library,
                title: 'YouTube',
                url: 'https://www.youtube.com/channel/yourchannel', // Replace with your URL
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
        // Open the URL
        _launchURL(url);
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ListTile(
          leading: Icon(icon, size: 40.0, color: Colors.blue),
          title: Text(title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }

  void _launchURL(String url) {
    // Use url_launcher package to open URLs
    // Add url_launcher to your pubspec.yaml and import it here
    // import 'package:url_launcher/url_launcher.dart';

    // Launch URL
    // launch(url);
  }
}
