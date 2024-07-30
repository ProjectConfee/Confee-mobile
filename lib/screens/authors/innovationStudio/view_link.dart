import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'custom_bottom_navigation_bar.dart';
import 'home_page.dart';  // Ensure this import points to your HomePage file
import 'profile_view.dart'; // Ensure this import points to your ProfileViewPage file

class ViewLinkPage extends StatefulWidget {
  @override
  _ViewLinkPageState createState() => _ViewLinkPageState();
}

class _ViewLinkPageState extends State<ViewLinkPage> {
  final List<Map<String, String>> links = [
    {
      'title': 'Over Web Page',
      'url': 'https://wso2.com/',
    },
    {
      'title': 'Improve Your SoftSkills',
      'url': 'https://resources.workable.com/hr-terms/what-are-soft-skills',
    },
    {
      'title': 'Improve your presentaion skills',
      'url': 'https://www.softwebsolutions.com',
    },
    {
      'title': ' Career Goals and Interests',
      'url': 'https://wso2.com/',
    },
    {
      'title': 'Professional Skills Development',
      'url': 'https://resources.workable.com/hr-terms/what-are-soft-skills',
    },
    {
      'title': 'Understanding Internships',
      'url': 'https://www.softwebsolutions.com',
    },
    {
      'title': 'FundamentalProgramming Concept',
      'url': 'https://wso2.com/',
    },
    {
      'title': ' Networking Fundamentals',
      'url': 'https://resources.workable.com/hr-terms/what-are-soft-skills',
    },
    {
      'title': 'Career Exploration and Planning',
      'url': 'https://www.softwebsolutions.com',
    },
  ];

 // int _currentIndex = 1; // Default to Packages tab

  void _onTap(int index) {
    setState(() {
      //_currentIndex = index;
    });

    switch (index) {
      case 0:
        // Navigate to the HomePage when the home icon is tapped
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage_Sponser()),
          (Route<dynamic> route) => false,
        );
        break;
      case 1:
        // Stay on the current page
        break;
      case 2:
        // Navigate to the ProfileViewPage when the profile icon is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileViewPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Link',style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF050C9B),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: const Color.fromARGB(255, 254, 251, 251),
        child: ListView.builder(
          itemCount: links.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebPage(url: links[index]['url']!),
                  ),
                );
              },
              child: Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        links[index]['title']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.black),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: HomeBottomBar(
        //currentIndex: _currentIndex,
       // onTap: _onTap,
      ),
    );
  }
}

class WebPage extends StatelessWidget {
  final String url;

  WebPage({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web View'),
        backgroundColor: Colors.blue[800],
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
