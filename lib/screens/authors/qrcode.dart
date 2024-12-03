import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import '../../utils/auth_headers.dart';


class QRCodePage extends StatefulWidget {
  @override
  _QRCodePageState createState() => _QRCodePageState();
}

class _QRCodePageState extends State<QRCodePage> {
  final _secureStorage = const FlutterSecureStorage();
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  List<Map<String, dynamic>> qrCodes = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchQRCodes();
  }

  Future<void> fetchQRCodes() async {
    final List<String> ticketIds = [
      "123456",
      "12345678",
    ]; // Replace with your ticket IDs

    try {
      final headers = await getHeaders(); // Fetch headers using the utility function

      for (String ticketId in ticketIds) {
        final response = await http.get(
          Uri.parse('http://192.168.137.10:8080/api/qr/get/$ticketId'),
          headers: headers,
        );

        if (response.statusCode == 200) {
          setState(() {
            qrCodes.add({
              'image': response.bodyBytes,
              'name': ticketId,
            });
          });
        } else {
          print('Failed to fetch QR code for ticket: $ticketId');
        }
      }
    } catch (e) {
      if (e.toString().contains('No auth token')) {
        print('Redirecting to login due to missing token.');
        Navigator.pushReplacementNamed(context, '/login');
      } else {
        print('Error fetching QR codes: $e');
      }
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130,
            color: Color(0xFF050C9B),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'QR Codes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Welcome to Confee',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          isLoading
              ? Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
              : qrCodes.isEmpty
              ? Expanded(
            child: Center(
              child: Text('No QR codes available'),
            ),
          )
              : Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_left, size: 40),
                    onPressed: _currentIndex > 0
                        ? () => _pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    )
                        : null,
                  ),
                  Container(
                    height: 400,
                    width: 280,
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (index) =>
                          setState(() => _currentIndex = index),
                      itemCount: qrCodes.length,
                      itemBuilder: (context, index) {
                        final qrCode = qrCodes[index];
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Image.memory(
                                  qrCode['image'],
                                  height: 250,
                                  width: 250,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(height: 24.0),
                            Text(
                              qrCode['name'],
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_right, size: 40),
                    onPressed: _currentIndex < qrCodes.length - 1
                        ? () => _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    )
                        : null,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
