import 'package:confee/screens/event/event_detail.dart';
import 'package:confee/screens/event/resource.dart';
import 'package:confee/screens/event/schedule.dart';
import 'package:flutter/material.dart';


class ViewEvent extends StatelessWidget {
  const ViewEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "LibreOffice Workshop",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            bottom:  TabBar(
              indicatorColor: Colors.blue[800],
              labelColor: Colors.blue[800],
              tabs: <Widget>[
                const Tab(
                  icon: Icon(Icons.info_outline,size: 32),
                ),
                const Tab(
                  icon: Icon(Icons.pending_actions,size: 32),
                ),
                const Tab(
                  icon: Icon(Icons.library_books,size: 32),
                ),
                const Tab(
                  icon: Icon(Icons.qr_code_2,size: 32),
                ),
                const Tab(
                  icon: Icon(Icons.feedback,size: 32),
                ),
              ],
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black, size: 28.0),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/participant_dashboard'); // Navigate to home when arrow back is pressed
                },
            ),
          ),
          body: const TabBarView(
            children: [
              EventDetail(),
              Schedule(),
              Resource(),
              Center(child: Text("Brightness Tab Content")),
              Center(child: Text("Beach Tab Content")),
            ],
          ),
        ),
      ),
    );
  }
}


