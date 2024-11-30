import 'dart:convert';
import 'package:http/http.dart' as http;

class Announcement {
  final int id;
  final String announcement;  // Matches the 'announcement' field in backend
  final String timestamp;  // Matches the 'timestamp' field in backend

  Announcement({
    required this.id,
    required this.announcement,
    required this.timestamp,
  });

  factory Announcement.fromJson(Map<String, dynamic> json) {
    return Announcement(
      id: json['id'],
      announcement: json['announcement'],
      timestamp: json['timestamp'],
    );
  }
}

class AnnouncementService {
  final String baseUrl;

  AnnouncementService({required this.baseUrl});

  Future<List<Announcement>> fetchAnnouncements() async {
    final response = await http.get(Uri.parse('$baseUrl/api/announcements/getAll'));

    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((item) => Announcement.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load announcements');
    }
  }
}
