import 'package:flutter/material.dart';
import 'package:confee/services/announcement_service.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  late Future<List<Announcement>> _announcements;
  final AnnouncementService _announcementService =
      AnnouncementService(baseUrl: 'http://localhost:8080'); // Backend URL

  @override
  void initState() {
    super.initState();
    _announcements = _fetchAndSortAnnouncements();
  }

  Future<List<Announcement>> _fetchAndSortAnnouncements() async {
    // Fetch the announcements from the backend
    List<Announcement> announcements = await _announcementService.fetchAnnouncements();

    // Sort by timestamp in descending order (newest first)
    announcements.sort((a, b) {
      DateTime dateA = DateTime.parse(a.timestamp);
      DateTime dateB = DateTime.parse(b.timestamp);
      return dateB.compareTo(dateA); // Descending order
    });

    return announcements;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF050C9B),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FutureBuilder<List<Announcement>>(
            future: _announcements,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Center(child: Text('No notifications available.'));
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final announcement = snapshot.data![index];
                    return _buildNotificationCard(announcement);
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationCard(Announcement announcement) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              announcement.announcement,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Timestamp: ${announcement.timestamp}',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
